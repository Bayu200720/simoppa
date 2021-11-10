<?php

if (!function_exists('createZipFile')) {
    function createZipFile($zipfiles, $zipNames = null, $isMultiple = false, $isDownload = false, $docId = 0) {
        $zipFile = new \PhpZip\ZipFile();
        $outputDir = ROOTDIR.'uploads/zip';
        $fileSavePath = null;
        $childZips = [];
        try {
            if (!file_exists($outputDir)) {
                @mkdir($outputDir, 0777, true);
            }
            foreach ($zipfiles as $key => $file) {
                foreach ($file['zips'] as $zipFilePath) {
                    $zipFile->addFile($zipFilePath['origin'], $zipFilePath['rename']);
                }
                $fileSavePath = $outputDir.'/'.$file['zipName'];
                $zipFile->saveAsFile($fileSavePath);
                $zipOutputCountFile = $zipFile->count();
                if ($isMultiple && $zipOutputCountFile > 0) {
                    $zipFile->close();
                    array_push($childZips, $fileSavePath);
                    $zipFile->addFile($fileSavePath, $file['zipName']);
                }
            }
    
            if ($isMultiple && count($childZips) > 0) {
                $fileSavePath = $outputDir.'/'.$zipNames;
                $zipFile->saveAsFile($fileSavePath);
                if ($zipFile->count() > 0) {
                    foreach ($childZips as $removeFile) {
                        if (file_exists($removeFile)) {
                            unlink($removeFile);
                        }
                    }
                }
            }
    
            if ($isDownload) {
                header('Content-Type: application/zip');
                header('Content-disposition: attachment; filename='.$zipNames);
                header('Content-Length: ' . filesize($fileSavePath));
                readfile($fileSavePath);
            } else {
                return $fileSavePath;
            }
        } catch(\PhpZip\Exception\ZipException $e){
            dd($e);
        } finally{
            $zipFile->close();
        }
    }
}

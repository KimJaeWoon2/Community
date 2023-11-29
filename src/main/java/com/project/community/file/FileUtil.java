package com.project.community.file;
import java.io.File;
import java.io.IOException;
public class FileUtil {
    public static boolean savFile(FileVO vo)
    {   
        // vo에 storedName을 가지고오고
        // vo에 path를 가져와서
        // 파일을 만들어준다.
        boolean result = true;
        File dirFile = new File(vo.getFilePath());

        if(false == dirFile.exists())
        {
            dirFile.mkdirs();
        }

        File file = new File(vo.getFilePath(), vo.getStoredName());

        try
        {   
            System.out.println("file saved : " + file.getAbsolutePath());
            vo.getMultiFile().transferTo(file);
        }
        catch(IllegalStateException e)
        {   
            result = false;
            e.printStackTrace();
        }
        catch(IOException e)
        {   
            result = false;
            e.printStackTrace();
        }
        catch(Exception e)
        {   
            result = false;
            e.printStackTrace();
        }
        
        return result;
}
}

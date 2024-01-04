.class public Lcn/xutils/boxposed/api/PatchUtils;
.super Ljava/lang/Object;
.source "PatchUtils.java"


# static fields
.field private static final PLUGIN_APP:Ljava/lang/String; = "cn.xutils.plugin"

.field private static final TAG:Ljava/lang/String; = "PatchUtils"

.field private static sCurProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcn/xutils/boxposed/api/PatchUtils;->sCurProcessName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAppContext()Landroid/content/Context;
    .locals 13

    .line 99
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 101
    .local v2, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 105
    .local v5, "activityThreadObj":Ljava/lang/Object;
    const-string v6, "mBoundApplication"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 106
    .local v6, "boundApplicationField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 109
    .local v7, "mBoundApplication":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "info"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 110
    .local v8, "infoField":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 113
    .local v9, "loadedApkObj":Ljava/lang/Object;
    const-string v10, "android.app.ContextImpl"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 114
    .local v10, "contextImplClass":Ljava/lang/Class;
    const-string v11, "createAppContext"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    aput-object v1, v12, v3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v12, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 115
    .local v3, "createAppContextMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 117
    filled-new-array {v5, v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 119
    .local v4, "context":Ljava/lang/Object;
    instance-of v11, v4, Landroid/content/Context;

    if-eqz v11, :cond_0

    .line 120
    move-object v11, v4

    check-cast v11, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v11

    .line 125
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    .end local v2    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    .end local v3    # "createAppContextMethod":Ljava/lang/reflect/Method;
    .end local v4    # "context":Ljava/lang/Object;
    .end local v5    # "activityThreadObj":Ljava/lang/Object;
    .end local v6    # "boundApplicationField":Ljava/lang/reflect/Field;
    .end local v7    # "mBoundApplication":Ljava/lang/Object;
    .end local v8    # "infoField":Ljava/lang/reflect/Field;
    .end local v9    # "loadedApkObj":Ljava/lang/Object;
    .end local v10    # "contextImplClass":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    sget-object v0, Lcn/xutils/boxposed/api/PatchUtils;->sCurProcessName:Ljava/lang/String;

    .line 132
    .local v0, "procName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    return-object v0

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 137
    .local v1, "pid":I
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 138
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 139
    .local v4, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_1

    .line 140
    const-string v3, "Process"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v3, Lcn/xutils/boxposed/api/PatchUtils;->sCurProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-object v3

    .line 144
    .end local v4    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 147
    .end local v1    # "pid":I
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :cond_2
    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcn/xutils/boxposed/api/PatchUtils;->getCurProcessNameFromProc()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/xutils/boxposed/api/PatchUtils;->sCurProcessName:Ljava/lang/String;

    .line 149
    return-object v1
.end method

.method private static getCurProcessNameFromProc()Ljava/lang/String;
    .locals 6

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v1, "processName":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "c":I
    if-lez v2, :cond_0

    .line 162
    int-to-char v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_0
    const-string v2, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    nop

    .line 171
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    goto :goto_1

    .line 172
    :catch_0
    move-exception v4

    .line 165
    :goto_1
    return-object v2

    .line 166
    .end local v1    # "processName":Ljava/lang/StringBuilder;
    .end local v3    # "c":I
    :catchall_0
    move-exception v1

    .line 169
    if-eqz v0, :cond_1

    .line 171
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    :goto_2
    goto :goto_3

    .line 172
    :catch_1
    move-exception v1

    goto :goto_2

    .line 177
    :cond_1
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static init()V
    .locals 11

    .line 38
    const-class v0, Lcn/xutils/boxposed/api/PatchUtils;

    invoke-static {}, Lcn/xutils/boxposed/api/PatchUtils;->createAppContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 40
    const-string v0, "PatchUtils"

    const-string v2, "context is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcn/xutils/boxposed/api/utils/FileUtils;->getText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "signature":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/xutils/boxposed/api/PatchUtils;->killPmm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    .end local v2    # "signature":Ljava/lang/String;
    nop

    .line 56
    :try_start_1
    const-string v2, "cn.xutils.plugin"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 58
    .local v2, "pluginContext":Landroid/content/Context;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    .local v3, "bas":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "init_entry"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    .local v4, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-static {v4, v3}, Lcn/xutils/boxposed/api/utils/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_1
    goto :goto_1

    .line 59
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "pluginContext":Landroid/content/Context;
    .end local v3    # "bas":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 61
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "pluginContext":Landroid/content/Context;
    .restart local v3    # "bas":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 63
    :goto_1
    :try_start_7
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 64
    .local v4, "entryClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 65
    new-instance v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;)V

    .line 66
    .local v5, "param":Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 67
    invoke-static {v1}, Lcn/xutils/boxposed/api/PatchUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    invoke-static {v1}, Lcn/xutils/boxposed/api/PatchUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, v5, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;->isFirstApplication:Z

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "codePath":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "optimizedDirectory":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "librarySearchPath":Ljava/lang/String;
    new-instance v9, Ldalvik/system/DexClassLoader;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v9, v6, v7, v8, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v0, v9

    .line 79
    .local v0, "dexClassLoader":Ldalvik/system/DexClassLoader;
    nop

    .line 80
    invoke-virtual {v0, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 81
    .local v9, "applicationCls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/xutils/boxposed/api/IXposedHookLoadPackage;>;"
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/xutils/boxposed/api/IXposedHookLoadPackage;

    .line 82
    .local v10, "loadPackage":Lcn/xutils/boxposed/api/IXposedHookLoadPackage;
    invoke-interface {v10, v5}, Lcn/xutils/boxposed/api/IXposedHookLoadPackage;->handleLoadPackage(Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;)V

    goto :goto_7

    .line 92
    .end local v0    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v2    # "pluginContext":Landroid/content/Context;
    .end local v3    # "bas":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "entryClass":Ljava/lang/String;
    .end local v5    # "param":Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;
    .end local v6    # "codePath":Ljava/lang/String;
    .end local v7    # "optimizedDirectory":Ljava/lang/String;
    .end local v8    # "librarySearchPath":Ljava/lang/String;
    .end local v9    # "applicationCls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/xutils/boxposed/api/IXposedHookLoadPackage;>;"
    .end local v10    # "loadPackage":Lcn/xutils/boxposed/api/IXposedHookLoadPackage;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v0

    goto :goto_3

    .line 88
    :catch_2
    move-exception v0

    goto :goto_4

    .line 86
    :catch_3
    move-exception v0

    goto :goto_5

    .line 84
    :catch_4
    move-exception v0

    goto :goto_6

    .line 48
    :catch_5
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "context":Landroid/content/Context;
    throw v2
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v1    # "context":Landroid/content/Context;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 91
    .local v0, "e":Ljava/lang/InstantiationException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_7

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_7

    .line 87
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_7

    .line 85
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_7
    nop

    .line 95
    :goto_8
    return-void
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    invoke-static {p0}, Lcn/xutils/boxposed/api/PatchUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static killPmm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "signatureData"    # Ljava/lang/String;

    .line 191
    :try_start_0
    new-instance v0, Landroid/content/pm/Signature;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 193
    .local v0, "fakeSignature":Landroid/content/pm/Signature;
    sget-object v1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    .local v1, "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    new-instance v2, Lcn/xutils/boxposed/api/PatchUtils$1;

    invoke-direct {v2, v1, p0, v0}, Lcn/xutils/boxposed/api/PatchUtils$1;-><init>(Landroid/os/Parcelable$Creator;Ljava/lang/String;Landroid/content/pm/Signature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    .local v2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :try_start_1
    const-class v3, Landroid/content/pm/PackageInfo;

    const-string v4, "CREATOR"

    invoke-static {v3, v4}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    nop

    .line 231
    :try_start_2
    const-class v3, Landroid/os/Parcel;

    const-string v5, "mCreators"

    invoke-static {v3, v5}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 232
    .local v3, "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-class v5, Landroid/os/Parcel;

    const-string v6, "sPairedCreators"

    invoke-static {v5, v6}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 235
    .local v4, "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 236
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    .end local v3    # "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v4    # "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v3

    .line 242
    .end local v0    # "fakeSignature":Landroid/content/pm/Signature;
    .end local v1    # "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    goto :goto_1

    .line 227
    .restart local v0    # "fakeSignature":Landroid/content/pm/Signature;
    .restart local v1    # "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "signatureData":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    .end local v0    # "fakeSignature":Landroid/content/pm/Signature;
    .end local v1    # "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "packageName":Ljava/lang/String;
    .restart local p1    # "signatureData":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

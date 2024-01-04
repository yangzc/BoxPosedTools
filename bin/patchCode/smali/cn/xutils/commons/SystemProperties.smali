.class public final Lcn/xutils/commons/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String; = "awt.toolkit"

.field public static final FILE_ENCODING:Ljava/lang/String; = "file.encoding"

.field public static final FILE_SEPARATOR:Ljava/lang/String; = "file.separator"

.field public static final JAVA_AWT_FONTS:Ljava/lang/String; = "java.awt.fonts"

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String; = "java.awt.graphicsenv"

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String; = "java.awt.headless"

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String; = "java.awt.printerjob"

.field public static final JAVA_CLASS_PATH:Ljava/lang/String; = "java.class.path"

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String; = "java.class.version"

.field public static final JAVA_COMPILER:Ljava/lang/String; = "java.compiler"

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String; = "java.endorsed.dirs"

.field public static final JAVA_EXT_DIRS:Ljava/lang/String; = "java.ext.dirs"

.field public static final JAVA_HOME:Ljava/lang/String; = "java.home"

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String; = "java.library.path"

.field public static final JAVA_LOCALE_PROVIDERS:Ljava/lang/String; = "java.locale.providers"

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String; = "java.runtime.name"

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String; = "java.runtime.version"

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String; = "java.specification.name"

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String; = "java.specification.vendor"

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String; = "java.specification.version"

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String; = "java.util.prefs.PreferencesFactory"

.field public static final JAVA_VENDOR:Ljava/lang/String; = "java.vendor"

.field public static final JAVA_VENDOR_URL:Ljava/lang/String; = "java.vendor.url"

.field public static final JAVA_VERSION:Ljava/lang/String; = "java.version"

.field public static final JAVA_VM_INFO:Ljava/lang/String; = "java.vm.info"

.field public static final JAVA_VM_NAME:Ljava/lang/String; = "java.vm.name"

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String; = "java.vm.specification.name"

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String; = "java.vm.specification.vendor"

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String; = "java.vm.specification.version"

.field public static final JAVA_VM_VENDOR:Ljava/lang/String; = "java.vm.vendor"

.field public static final JAVA_VM_VERSION:Ljava/lang/String; = "java.vm.version"

.field public static final LINE_SEPARATOR:Ljava/lang/String; = "line.separator"

.field private static final NULL_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OS_ARCH:Ljava/lang/String; = "os.arch"

.field public static final OS_NAME:Ljava/lang/String; = "os.name"

.field public static final OS_VERSION:Ljava/lang/String; = "os.version"

.field public static final PATH_SEPARATOR:Ljava/lang/String; = "path.separator"

.field public static final USER_COUNTRY:Ljava/lang/String; = "user.country"

.field public static final USER_DIR:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String; = "user.home"

.field public static final USER_LANGUAGE:Ljava/lang/String; = "user.language"

.field public static final USER_NAME:Ljava/lang/String; = "user.name"

.field public static final USER_REGION:Ljava/lang/String; = "user.region"

.field public static final USER_TIMEZONE:Ljava/lang/String; = "user.timezone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/SystemProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/SystemProperties$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/SystemProperties;->NULL_SUPPLIER:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAwtToolkit()Ljava/lang/String;
    .locals 1

    .line 265
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultIfAbsent"    # Ljava/util/function/BooleanSupplier;

    .line 278
    invoke-static {p0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static getFileEncoding()Ljava/lang/String;
    .locals 1

    .line 294
    const-string v0, "file.encoding"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSeparator()Ljava/lang/String;
    .locals 1

    .line 306
    const-string v0, "file.separator"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/util/function/IntSupplier;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultIfAbsent"    # Ljava/util/function/IntSupplier;

    .line 319
    invoke-static {p0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getJavaAwtFonts()Ljava/lang/String;
    .locals 1

    .line 332
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtGraphicsenv()Ljava/lang/String;
    .locals 1

    .line 344
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtHeadless()Ljava/lang/String;
    .locals 1

    .line 356
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtPrinterjob()Ljava/lang/String;
    .locals 1

    .line 368
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassPath()Ljava/lang/String;
    .locals 1

    .line 380
    const-string v0, "java.class.path"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassVersion()Ljava/lang/String;
    .locals 1

    .line 392
    const-string v0, "java.class.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCompiler()Ljava/lang/String;
    .locals 1

    .line 404
    const-string v0, "java.compiler"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEndorsedDirs()Ljava/lang/String;
    .locals 1

    .line 416
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaExtDirs()Ljava/lang/String;
    .locals 1

    .line 428
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaHome()Ljava/lang/String;
    .locals 1

    .line 440
    const-string v0, "java.home"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaIoTmpdir()Ljava/lang/String;
    .locals 1

    .line 452
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaLibraryPath()Ljava/lang/String;
    .locals 1

    .line 464
    const-string v0, "java.library.path"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaLocaleProviders()Ljava/lang/String;
    .locals 1

    .line 478
    const-string v0, "java.locale.providers"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeName()Ljava/lang/String;
    .locals 1

    .line 490
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeVersion()Ljava/lang/String;
    .locals 1

    .line 502
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationName()Ljava/lang/String;
    .locals 1

    .line 514
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVendor()Ljava/lang/String;
    .locals 1

    .line 526
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVersion()Ljava/lang/String;
    .locals 1

    .line 538
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaUtilPrefsPreferencesFactory()Ljava/lang/String;
    .locals 1

    .line 550
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendor()Ljava/lang/String;
    .locals 1

    .line 562
    const-string v0, "java.vendor"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendorUrl()Ljava/lang/String;
    .locals 1

    .line 574
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .locals 1

    .line 586
    const-string v0, "java.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmInfo()Ljava/lang/String;
    .locals 1

    .line 598
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmName()Ljava/lang/String;
    .locals 1

    .line 610
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationName()Ljava/lang/String;
    .locals 1

    .line 622
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVendor()Ljava/lang/String;
    .locals 1

    .line 634
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVersion()Ljava/lang/String;
    .locals 1

    .line 646
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVendor()Ljava/lang/String;
    .locals 1

    .line 658
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVersion()Ljava/lang/String;
    .locals 1

    .line 670
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 682
    const-string v0, "line.separator"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/util/function/LongSupplier;)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultIfAbsent"    # Ljava/util/function/LongSupplier;

    .line 695
    invoke-static {p0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static getOsArch()Ljava/lang/String;
    .locals 1

    .line 708
    const-string v0, "os.arch"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsName()Ljava/lang/String;
    .locals 1

    .line 720
    const-string v0, "os.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .line 732
    const-string v0, "os.version"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathSeparator()Ljava/lang/String;
    .locals 1

    .line 744
    const-string v0, "path.separator"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .line 757
    sget-object v0, Lcn/xutils/commons/SystemProperties;->NULL_SUPPLIER:Ljava/util/function/Supplier;

    invoke-static {p0, v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 772
    .local p1, "defaultValue":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 775
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 777
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "ignore":Ljava/lang/SecurityException;
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getUserCountry()Ljava/lang/String;
    .locals 1

    .line 795
    const-string v0, "user.country"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDir()Ljava/lang/String;
    .locals 1

    .line 807
    const-string v0, "user.dir"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserHome()Ljava/lang/String;
    .locals 1

    .line 819
    const-string v0, "user.home"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLanguage()Ljava/lang/String;
    .locals 1

    .line 831
    const-string v0, "user.language"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .line 843
    const-string v0, "user.name"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTimezone()Ljava/lang/String;
    .locals 1

    .line 855
    const-string v0, "user.timezone"

    invoke-static {v0}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lcn/xutils/boxposed/api/XposedHelpers;
.super Ljava/lang/Object;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;,
        Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;,
        Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;
    }
.end annotation


# static fields
.field private static final additionalFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final constructorCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;",
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;",
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;",
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodDepth:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->methodCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->constructorCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static assetAsByteArray(Landroid/content/res/Resources;Ljava/lang/String;)[B
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1734
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedHelpers;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1475
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1480
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1476
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1479
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1454
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1459
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1455
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1458
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1520
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1525
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1521
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1524
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1499
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1504
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1500
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1502
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1503
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decrementMethodDepth(Ljava/lang/String;)I
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 1796
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    .locals 3
    .param p1, "parameterTypesAndCallback"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 729
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lcn/xutils/boxposed/api/XC_MethodHook;

    if-eqz v0, :cond_0

    .line 732
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    check-cast v0, Lcn/xutils/boxposed/api/XC_MethodHook;

    .line 733
    .local v0, "callback":Lcn/xutils/boxposed/api/XC_MethodHook;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 735
    .local v1, "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v1, v0}, Lcn/xutils/boxposed/api/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v2

    return-object v2

    .line 730
    .end local v0    # "callback":Lcn/xutils/boxposed/api/XC_MethodHook;
    .end local v1    # "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no callback defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "parameterTypesAndCallback"    # [Ljava/lang/Object;

    .line 743
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypesAndCallback"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 311
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    instance-of v0, v0, Lcn/xutils/boxposed/api/XC_MethodHook;

    if-eqz v0, :cond_0

    .line 314
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lcn/xutils/boxposed/api/XC_MethodHook;

    .line 315
    .local v0, "callback":Lcn/xutils/boxposed/api/XC_MethodHook;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 317
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-static {v1, v0}, Lcn/xutils/boxposed/api/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v2

    return-object v2

    .line 312
    .end local v0    # "callback":Lcn/xutils/boxposed/api/XC_MethodHook;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no callback defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypesAndCallback"    # [Ljava/lang/Object;

    .line 390
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcn/xutils/boxposed/api/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v0

    return-object v0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object p1, Lcn/xutils/boxposed/api/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 205
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p0, v0}, Lcn/xutils/commons/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;

    invoke-direct {v1, v0}, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 754
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 759
    new-instance v0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V

    .line 761
    .local v0, "key":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;
    sget-object v1, Lcn/xutils/boxposed/api/XposedHelpers;->constructorCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda5;-><init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)V

    .line 786
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 761
    return-object v1
.end method

.method public static findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 807
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 808
    .local v0, "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 809
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 810
    goto :goto_1

    .line 811
    :cond_0
    if-nez v0, :cond_1

    .line 812
    invoke-static {p2}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 813
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p1, v1

    .line 808
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "i":I
    :cond_2
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    return-object v1
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 796
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 711
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V

    .line 713
    .local v0, "key":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;
    sget-object v1, Lcn/xutils/boxposed/api/XposedHelpers;->constructorCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda7;-><init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)V

    .line 721
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 713
    return-object v1
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p1, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 671
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 691
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p1, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 680
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 700
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 236
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;

    invoke-direct {v0, p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    .local v0, "key":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;
    sget-object v1, Lcn/xutils/boxposed/api/XposedHelpers;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda9;-><init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)V

    .line 246
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 238
    return-object v1
.end method

.method public static findFieldIfExists(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 259
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NoSuchFieldError;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 267
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 271
    if-eqz p0, :cond_1

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 276
    :catch_1
    move-exception v1

    .line 277
    goto :goto_0

    .line 272
    :cond_0
    nop

    .line 279
    :cond_1
    throw v0
.end method

.method public static findFirstFieldByExactType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 293
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 295
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 296
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    return-object v4

    .line 295
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 303
    :cond_2
    new-instance v1, Ljava/lang/NoSuchFieldError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 525
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 526
    :catch_0
    move-exception v0

    .line 530
    new-instance v0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V

    .line 532
    .local v0, "key":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;
    sget-object v1, Lcn/xutils/boxposed/api/XposedHelpers;->methodCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)V

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 532
    return-object v1
.end method

.method public static findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 586
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 587
    .local v0, "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 588
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 589
    goto :goto_1

    .line 590
    :cond_0
    if-nez v0, :cond_1

    .line 591
    invoke-static {p3}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 592
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p2, v1

    .line 587
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_2
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 575
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 458
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V

    .line 460
    .local v0, "key":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;
    sget-object v1, Lcn/xutils/boxposed/api/XposedHelpers;->methodCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda3;-><init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)V

    .line 468
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 460
    return-object v1
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 398
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Object;

    .line 429
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p3}, Lcn/xutils/boxposed/api/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 407
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 408
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Object;

    .line 445
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcn/xutils/boxposed/api/XposedHelpers;->findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs findMethodsByExactParameters(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 483
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 484
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 485
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq p1, v5, :cond_0

    .line 486
    goto :goto_3

    .line 488
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 489
    .local v5, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, p2

    array-length v7, v5

    if-eq v6, v7, :cond_1

    .line 490
    goto :goto_3

    .line 492
    :cond_1
    const/4 v6, 0x1

    .line 493
    .local v6, "match":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, p2

    if-ge v7, v8, :cond_3

    .line 494
    aget-object v8, p2, v7

    aget-object v9, v5, v7

    if-eq v8, v9, :cond_2

    .line 495
    const/4 v6, 0x0

    .line 496
    goto :goto_2

    .line 493
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 500
    .end local v7    # "i":I
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 501
    goto :goto_3

    .line 503
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 504
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public static getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .line 1640
    if-eqz p0, :cond_2

    .line 1642
    if-eqz p1, :cond_1

    .line 1646
    sget-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1648
    .local v1, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 1649
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1650
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1652
    monitor-enter v1

    .line 1653
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1650
    .end local v1    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1643
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1714
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .line 1693
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1052
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1055
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByteField(Ljava/lang/Object;Ljava/lang/String;)B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1067
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1070
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCharField(Ljava/lang/Object;Ljava/lang/String;)C
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1082
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1085
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 645
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public static getDoubleField(Ljava/lang/Object;Ljava/lang/String;)D
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1097
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1100
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFirstParameterIndexByType(Ljava/lang/reflect/Member;Ljava/lang/Class;)I
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 848
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 849
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 850
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 851
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_1

    .line 852
    return v1

    .line 850
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 855
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/NoSuchFieldError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No parameter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFloatField(Ljava/lang/Object;Ljava/lang/String;)F
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1112
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1115
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIntField(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1126
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1127
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1130
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLongField(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1142
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1145
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getMD5Sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1755
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1756
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1757
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 1759
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    if-lez v3, :cond_0

    .line 1760
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1763
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1764
    .local v3, "md5sum":[B
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1765
    .local v5, "bigInt":Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1766
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "md5sum":[B
    .end local v4    # "read":I
    .end local v5    # "bigInt":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, ""

    return-object v1
.end method

.method public static getMethodDepth(Ljava/lang/String;)I
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 1807
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private static getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .line 1811
    sget-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    monitor-enter v0

    .line 1812
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    .line 1813
    .local v1, "counter":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-nez v1, :cond_0

    .line 1814
    new-instance v2, Lcn/xutils/boxposed/api/XposedHelpers$1;

    invoke-direct {v2}, Lcn/xutils/boxposed/api/XposedHelpers$1;-><init>()V

    move-object v1, v2

    .line 1820
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1823
    .end local v1    # "counter":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1028
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1029
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1032
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 6
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "parameterTypesAndCallback"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 615
    aget-object v2, p1, v1

    .line 616
    .local v2, "type":Ljava/lang/Object;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 620
    instance-of v4, v2, Lcn/xutils/boxposed/api/XC_MethodHook;

    if-eqz v4, :cond_0

    .line 621
    goto :goto_1

    .line 623
    :cond_0
    if-nez v0, :cond_1

    .line 624
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    .line 626
    :cond_1
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 627
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v1

    goto :goto_1

    .line 628
    :cond_2
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 629
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lcn/xutils/boxposed/api/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 614
    .end local v2    # "type":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 631
    .restart local v2    # "type":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;

    const-string v5, "parameter type must either be specified as Class or String"

    invoke-direct {v4, v5, v3}, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 617
    :cond_4
    new-instance v4, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;

    const-string v5, "parameter type must not be null"

    invoke-direct {v4, v5, v3}, Lcn/xutils/boxposed/api/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 635
    .end local v1    # "i":I
    .end local v2    # "type":Ljava/lang/Object;
    :cond_5
    if-nez v0, :cond_6

    .line 636
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Class;

    .line 638
    :cond_6
    return-object v0
.end method

.method public static getParameterIndexByType(Ljava/lang/reflect/Member;Ljava/lang/Class;)I
    .locals 7
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 865
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 866
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 867
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, -0x1

    .line 868
    .local v1, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    const-string v4, " found in "

    const/4 v5, -0x1

    if-ge v2, v3, :cond_3

    .line 869
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 870
    if-ne v1, v5, :cond_1

    .line 871
    move v1, v2

    goto :goto_2

    .line 873
    :cond_1
    new-instance v3, Ljava/lang/NoSuchFieldError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than one parameter of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 877
    .end local v2    # "i":I
    :cond_3
    if-eq v1, v5, :cond_4

    .line 878
    return v1

    .line 880
    :cond_4
    new-instance v2, Ljava/lang/NoSuchFieldError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No parameter of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 601
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 602
    .local v0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 603
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 649
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 651
    .local v1, "first":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 652
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 653
    const/4 v1, 0x0

    goto :goto_1

    .line 655
    :cond_0
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_1
    if-eqz v4, :cond_1

    .line 658
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 660
    :cond_1
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getShortField(Ljava/lang/Object;Ljava/lang/String;)S
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1157
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1160
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1325
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1326
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1328
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1329
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticByteField(Ljava/lang/Class;Ljava/lang/String;)B
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")B"
        }
    .end annotation

    .line 1340
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1341
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1344
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticCharField(Ljava/lang/Class;Ljava/lang/String;)C
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")C"
        }
    .end annotation

    .line 1355
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1356
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1359
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .line 1370
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1371
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1374
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticFloatField(Ljava/lang/Class;Ljava/lang/String;)F
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .line 1385
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1386
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1389
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1400
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1401
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1403
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1404
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticLongField(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1415
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1416
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1418
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1419
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1310
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1311
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1314
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticShortField(Ljava/lang/Class;Ljava/lang/String;)S
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    .line 1430
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1431
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1434
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 1042
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcn/xutils/boxposed/api/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static incrementMethodDepth(Ljava/lang/String;)I
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 1785
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1739
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1740
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1743
    .local v1, "temp":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-lez v2, :cond_0

    .line 1744
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1746
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1747
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$findConstructorBestMatch$8(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/util/Optional;
    .locals 8
    .param p0, "k"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "bestMatch":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->-$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 764
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 766
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)[Ljava/lang/Class;

    move-result-object v6

    .line 768
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 766
    invoke-static {v6, v7, v4}, Lcn/xutils/commons/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 771
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v5, v0, v4}, Lcn/xutils/commons/reflect/MemberUtilsX;->compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I

    move-result v4

    if-gez v4, :cond_1

    .line 775
    :cond_0
    move-object v0, v5

    .line 764
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 780
    :cond_2
    if-eqz v0, :cond_3

    .line 781
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 782
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 784
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$findConstructorBestMatch$9(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/lang/NoSuchMethodError;
    .locals 2
    .param p0, "key"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    .line 786
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findConstructorExact$6(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/util/Optional;
    .locals 2
    .param p0, "k"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    .line 715
    :try_start_0
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->-$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 716
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 717
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 718
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$findConstructorExact$7(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;)Ljava/lang/NoSuchMethodError;
    .locals 2
    .param p0, "key"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;

    .line 721
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findField$0(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/util/Optional;
    .locals 2
    .param p0, "k"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;

    .line 240
    :try_start_0
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->-$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->-$$Nest$fgetname(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/boxposed/api/XposedHelpers;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    .local v0, "newField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 242
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 243
    .end local v0    # "newField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$findField$1(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/lang/NoSuchFieldError;
    .locals 2
    .param p0, "key"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;

    .line 246
    new-instance v0, Ljava/lang/NoSuchFieldError;

    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findMethodBestMatch$4(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/util/Optional;
    .locals 10
    .param p0, "k"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "bestMatch":Ljava/lang/reflect/Method;
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/Class;

    move-result-object v1

    .line 535
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 537
    .local v2, "considerPrivateMethods":Z
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_4

    aget-object v7, v3, v5

    .line 539
    .local v7, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 540
    goto :goto_1

    .line 543
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetname(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)[Ljava/lang/Class;

    move-result-object v8

    .line 545
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 543
    invoke-static {v8, v9, v6}, Lcn/xutils/commons/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v7, v0, v6}, Lcn/xutils/commons/reflect/MemberUtilsX;->compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I

    move-result v6

    if-gez v6, :cond_3

    .line 552
    :cond_2
    move-object v0, v7

    .line 537
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 556
    :cond_4
    const/4 v2, 0x0

    .line 557
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    if-nez v3, :cond_0

    .line 559
    if-eqz v0, :cond_5

    .line 560
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 561
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 563
    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$findMethodBestMatch$5(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/NoSuchMethodError;
    .locals 2
    .param p0, "key"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    .line 565
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findMethodExact$2(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/util/Optional;
    .locals 3
    .param p0, "k"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    .line 462
    :try_start_0
    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetname(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->-$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 463
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 464
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 465
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$findMethodExact$3(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/NoSuchMethodError;
    .locals 2
    .param p0, "key"    # Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    .line 468
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1587
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1594
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1592
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1588
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1591
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1564
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1571
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 1572
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1569
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1565
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1567
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1568
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .line 1665
    if-eqz p0, :cond_2

    .line 1667
    if-eqz p1, :cond_1

    .line 1671
    sget-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1672
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1673
    .local v1, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 1674
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1675
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1677
    monitor-enter v1

    .line 1678
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1675
    .end local v1    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1668
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1666
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1721
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .line 1700
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1613
    if-eqz p0, :cond_2

    .line 1615
    if-eqz p1, :cond_1

    .line 1619
    sget-object v0, Lcn/xutils/boxposed/api/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1620
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1621
    .local v1, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 1622
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 1623
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1627
    monitor-enter v1

    .line 1628
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1625
    .end local v1    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1616
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1707
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1686
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/xutils/boxposed/api/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 906
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    nop

    .line 914
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 907
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 910
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setByteField(Ljava/lang/Object;Ljava/lang/String;B)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 921
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    nop

    .line 929
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 922
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 925
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setCharField(Ljava/lang/Object;Ljava/lang/String;C)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 936
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    nop

    .line 944
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 937
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 940
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setDoubleField(Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 951
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    nop

    .line 959
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 952
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 955
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 966
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    nop

    .line 974
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 967
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 970
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setIntField(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 981
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    nop

    .line 989
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 982
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 985
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setLongField(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 996
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    nop

    .line 1004
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 997
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1000
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 891
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    nop

    .line 899
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 892
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 895
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setShortField(Ljava/lang/Object;Ljava/lang/String;S)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 1011
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    nop

    .line 1019
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1012
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1015
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1188
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    nop

    .line 1196
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1189
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1192
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticByteField(Ljava/lang/Class;Ljava/lang/String;B)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .line 1203
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    nop

    .line 1211
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1207
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticCharField(Ljava/lang/Class;Ljava/lang/String;C)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 1218
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    nop

    .line 1226
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1219
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1222
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;D)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 1233
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    nop

    .line 1241
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1234
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1237
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFloatField(Ljava/lang/Class;Ljava/lang/String;F)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1248
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    nop

    .line 1256
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1249
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1252
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1263
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    nop

    .line 1271
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1267
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticLongField(Ljava/lang/Class;Ljava/lang/String;J)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1278
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    nop

    .line 1286
    return-void

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1279
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1282
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1173
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    nop

    .line 1181
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1174
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1177
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticShortField(Ljava/lang/Class;Ljava/lang/String;S)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .line 1293
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcn/xutils/boxposed/api/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    nop

    .line 1301
    return-void

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1294
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1297
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public final Lcn/xutils/boxposed/api/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;,
        Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "LSPosed-Bridge"

.field public static volatile dummyClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcn/xutils/boxposed/api/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcn/xutils/boxposed/api/XposedBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcn/xutils/boxposed/api/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcn/xutils/boxposed/api/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcn/xutils/boxposed/api/XposedBridge;->dummyClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static deoptimizeMethod(Ljava/lang/reflect/Member;)V
    .locals 3
    .param p0, "deoptimizedMethod"    # Ljava/lang/reflect/Member;

    .line 168
    instance-of v0, p0, Ljava/lang/reflect/Executable;

    if-eqz v0, :cond_2

    .line 170
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Executable;

    invoke-static {v0}, Lorg/lsposed/lspd/nativebridge/HookBridge;->deoptimizeMethod(Ljava/lang/reflect/Executable;)Z

    .line 176
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot deoptimize methods from proxy class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot deoptimize abstract methods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only methods and constructors can be deoptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lcn/xutils/boxposed/api/XC_MethodHook;)Ljava/util/Set;
    .locals 6
    .param p1, "callback"    # Lcn/xutils/boxposed/api/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcn/xutils/boxposed/api/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 260
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v0, "unhooks":Ljava/util/Set;, "Ljava/util/Set<Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 262
    .local v4, "constructor":Ljava/lang/reflect/Member;
    invoke-static {v4, p1}, Lcn/xutils/boxposed/api/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v4    # "constructor":Ljava/lang/reflect/Member;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lcn/xutils/boxposed/api/XC_MethodHook;)Ljava/util/Set;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcn/xutils/boxposed/api/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcn/xutils/boxposed/api/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 244
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v0, "unhooks":Ljava/util/Set;, "Ljava/util/Set<Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 246
    .local v4, "method":Ljava/lang/reflect/Member;
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    invoke-static {v4, p2}, Lcn/xutils/boxposed/api/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "method":Ljava/lang/reflect/Member;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    .locals 4
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Lcn/xutils/boxposed/api/XC_MethodHook;

    .line 193
    instance-of v0, p0, Ljava/lang/reflect/Executable;

    if-eqz v0, :cond_5

    .line 195
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot hook Method.invoke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 209
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Executable;

    const-class v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;

    iget v2, p1, Lcn/xutils/boxposed/api/XC_MethodHook;->priority:I

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2, p1}, Lorg/lsposed/lspd/nativebridge/HookBridge;->hookMethod(ZLjava/lang/reflect/Executable;Ljava/lang/Class;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to hook "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_2
    new-instance v0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;-><init>(Lcn/xutils/boxposed/api/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v0

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot hook abstract methods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only methods and constructors can be hooked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .param p1, "thisObject"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 319
    if-nez p2, :cond_0

    .line 320
    sget-object p2, Lcn/xutils/boxposed/api/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 323
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Executable;

    if-eqz v0, :cond_1

    .line 327
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Executable;

    invoke-static {v0, p1, p2}, Lorg/lsposed/lspd/nativebridge/HookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method must be of type Method or Constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    const-class v0, Lcn/xutils/boxposed/api/XposedBridge;

    monitor-enter v0

    .line 145
    :try_start_0
    const-string v1, "LSPosed-Bridge"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    .line 144
    .end local p0    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized log(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    const-class v0, Lcn/xutils/boxposed/api/XposedBridge;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "logStr":Ljava/lang/String;
    const-string v2, "LSPosed-Bridge"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    .line 156
    .end local v1    # "logStr":Ljava/lang/String;
    .end local p0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)V
    .locals 2
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Lcn/xutils/boxposed/api/XC_MethodHook;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    instance-of v0, p0, Ljava/lang/reflect/Executable;

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Executable;

    invoke-static {v0, v1, p1}, Lorg/lsposed/lspd/nativebridge/HookBridge;->unhookMethod(ZLjava/lang/reflect/Executable;Ljava/lang/Object;)Z

    .line 230
    :cond_0
    return-void
.end method

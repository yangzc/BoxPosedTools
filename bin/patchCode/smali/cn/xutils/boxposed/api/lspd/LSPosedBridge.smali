.class public Lcn/xutils/boxposed/api/lspd/LSPosedBridge;
.super Ljava/lang/Object;
.source "LSPosedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;,
        Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LSPosed-Bridge"

.field private static final castException:Ljava/lang/String; = "Return value\'s type from hook callback does not match the hooked method"

.field private static final getCause:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic -$$Nest$sfgetgetCause()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->getCause:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    :try_start_0
    const-class v0, Ljava/lang/reflect/InvocationTargetException;

    const-string v1, "getCause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .local v0, "tmp":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 34
    .end local v0    # "tmp":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 37
    .local v0, "tmp":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->getCause:Ljava/lang/reflect/Method;

    .line 38
    .end local v0    # "tmp":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dummyCallback()V
    .locals 0

    .line 211
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 58
    const-string v0, "LSPosed-Bridge"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 62
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "logStr":Ljava/lang/String;
    const-string v1, "LSPosed-Bridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.class public Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
.super Ljava/lang/Object;
.source "LSPosedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/lspd/LSPosedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HookerCallback"
.end annotation


# instance fields
.field final afterInvocation:Ljava/lang/reflect/Method;

.field final afterParams:I

.field final beforeInvocation:Ljava/lang/reflect/Method;

.field final beforeParams:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "beforeInvocation"    # Ljava/lang/reflect/Method;
    .param p2, "afterInvocation"    # Ljava/lang/reflect/Method;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->beforeInvocation:Ljava/lang/reflect/Method;

    .line 51
    iput-object p2, p0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterInvocation:Ljava/lang/reflect/Method;

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    iput v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->beforeParams:I

    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    iput v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterParams:I

    .line 54
    return-void
.end method

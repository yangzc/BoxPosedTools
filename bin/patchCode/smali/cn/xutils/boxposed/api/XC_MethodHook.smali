.class public abstract Lcn/xutils/boxposed/api/XC_MethodHook;
.super Lcn/xutils/boxposed/api/callbacks/XCallback;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;,
        Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 56
    invoke-direct {p0, p1}, Lcn/xutils/boxposed/api/callbacks/XCallback;-><init>(I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    .local p1, "param":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<*>;"
    return-void
.end method

.method protected beforeHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    .local p1, "param":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<*>;"
    return-void
.end method

.method public callAfterHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    .local p1, "param":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<*>;"
    invoke-virtual {p0, p1}, Lcn/xutils/boxposed/api/XC_MethodHook;->afterHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V

    .line 93
    return-void
.end method

.method public callBeforeHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    .local p1, "param":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<*>;"
    invoke-virtual {p0, p1}, Lcn/xutils/boxposed/api/XC_MethodHook;->beforeHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V

    .line 75
    return-void
.end method

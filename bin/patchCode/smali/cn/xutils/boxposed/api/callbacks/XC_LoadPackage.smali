.class public abstract Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;
.super Lcn/xutils/boxposed/api/callbacks/XCallback;
.source "XC_LoadPackage.java"

# interfaces
.implements Lcn/xutils/boxposed/api/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 51
    invoke-direct {p0, p1}, Lcn/xutils/boxposed/api/callbacks/XCallback;-><init>(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected call(Lcn/xutils/boxposed/api/callbacks/XCallback$Param;)V
    .locals 1
    .param p1, "param"    # Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    instance-of v0, p1, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;

    if-eqz v0, :cond_0

    .line 97
    move-object v0, p1

    check-cast v0, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-virtual {p0, v0}, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;->handleLoadPackage(Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 98
    :cond_0
    return-void
.end method

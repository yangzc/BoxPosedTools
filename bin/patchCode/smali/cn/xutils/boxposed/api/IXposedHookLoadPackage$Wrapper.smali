.class public final Lcn/xutils/boxposed/api/IXposedHookLoadPackage$Wrapper;
.super Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;
.source "IXposedHookLoadPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/IXposedHookLoadPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation


# instance fields
.field private final instance:Lcn/xutils/boxposed/api/IXposedHookLoadPackage;


# direct methods
.method public constructor <init>(Lcn/xutils/boxposed/api/IXposedHookLoadPackage;)V
    .locals 0
    .param p1, "instance"    # Lcn/xutils/boxposed/api/IXposedHookLoadPackage;

    .line 29
    invoke-direct {p0}, Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/xutils/boxposed/api/IXposedHookLoadPackage$Wrapper;->instance:Lcn/xutils/boxposed/api/IXposedHookLoadPackage;

    .line 31
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 1
    .param p1, "lpparam"    # Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/xutils/boxposed/api/IXposedHookLoadPackage$Wrapper;->instance:Lcn/xutils/boxposed/api/IXposedHookLoadPackage;

    invoke-interface {v0, p1}, Lcn/xutils/boxposed/api/IXposedHookLoadPackage;->handleLoadPackage(Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 35
    return-void
.end method

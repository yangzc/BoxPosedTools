.class public interface abstract Lcn/xutils/boxposed/api/IXposedHookLoadPackage;
.super Ljava/lang/Object;
.source "IXposedHookLoadPackage.java"

# interfaces
.implements Lcn/xutils/boxposed/api/IXposedMod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/IXposedHookLoadPackage$Wrapper;
    }
.end annotation


# virtual methods
.method public abstract handleLoadPackage(Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

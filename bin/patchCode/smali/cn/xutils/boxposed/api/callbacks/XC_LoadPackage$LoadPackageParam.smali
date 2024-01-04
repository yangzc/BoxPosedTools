.class public final Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage$LoadPackageParam;
.super Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
.source "XC_LoadPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadPackageParam"
.end annotation


# instance fields
.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public classLoader:Ljava/lang/ClassLoader;

.field public isFirstApplication:Z

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "callbacks":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcn/xutils/boxposed/api/callbacks/XC_LoadPackage;>;"
    invoke-direct {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;-><init>()V

    .line 63
    return-void
.end method

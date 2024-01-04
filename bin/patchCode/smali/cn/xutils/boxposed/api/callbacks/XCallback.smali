.class public abstract Lcn/xutils/boxposed/api/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x32

    iput v0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback;->priority:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcn/xutils/boxposed/api/callbacks/XCallback;->priority:I

    .line 61
    return-void
.end method


# virtual methods
.method protected call(Lcn/xutils/boxposed/api/callbacks/XCallback$Param;)V
    .locals 0
    .param p1, "param"    # Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    return-void
.end method

.class public final Lcn/xutils/boxposed/api/XposedHelpers$InvocationTargetError;
.super Ljava/lang/Error;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvocationTargetError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xedcbb6d49189d04L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1546
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 1547
    return-void
.end method

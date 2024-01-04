.class public Lcn/xutils/commons/exception/UncheckedIllegalAccessException;
.super Lcn/xutils/commons/exception/UncheckedReflectiveOperationException;
.source "UncheckedIllegalAccessException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Lcn/xutils/commons/exception/UncheckedReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

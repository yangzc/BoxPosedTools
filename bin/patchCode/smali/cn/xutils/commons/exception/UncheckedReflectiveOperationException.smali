.class public Lcn/xutils/commons/exception/UncheckedReflectiveOperationException;
.super Lcn/xutils/commons/exception/UncheckedException;
.source "UncheckedReflectiveOperationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0, p1}, Lcn/xutils/commons/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
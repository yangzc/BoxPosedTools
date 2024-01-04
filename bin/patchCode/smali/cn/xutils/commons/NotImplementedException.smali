.class public Lcn/xutils/commons/NotImplementedException;
.super Ljava/lang/UnsupportedOperationException;
.source "NotImplementedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1332ccdL


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/NotImplementedException;->code:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 99
    iput-object p2, p0, Lcn/xutils/commons/NotImplementedException;->code:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "code"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    iput-object p3, p0, Lcn/xutils/commons/NotImplementedException;->code:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/NotImplementedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "code"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    iput-object p2, p0, Lcn/xutils/commons/NotImplementedException;->code:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/xutils/commons/NotImplementedException;->code:Ljava/lang/String;

    return-object v0
.end method

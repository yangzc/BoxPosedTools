.class public interface abstract Lcn/xutils/commons/function/FailableLongPredicate;
.super Ljava/lang/Object;
.source "FailableLongPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lcn/xutils/commons/function/FailableLongPredicate;

.field public static final TRUE:Lcn/xutils/commons/function/FailableLongPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongPredicate;->FALSE:Lcn/xutils/commons/function/FailableLongPredicate;

    .line 38
    new-instance v0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongPredicate;->TRUE:Lcn/xutils/commons/function/FailableLongPredicate;

    return-void
.end method

.method public static falsePredicate()Lcn/xutils/commons/function/FailableLongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcn/xutils/commons/function/FailableLongPredicate;->FALSE:Lcn/xutils/commons/function/FailableLongPredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongPredicate;
    .param p1, "other"    # Lcn/xutils/commons/function/FailableLongPredicate;
    .param p2, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableLongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableLongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$negate$3(Lcn/xutils/commons/function/FailableLongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongPredicate;
    .param p1, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableLongPredicate;->test(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongPredicate;
    .param p1, "other"    # Lcn/xutils/commons/function/FailableLongPredicate;
    .param p2, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableLongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableLongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$static$0(J)Z
    .locals 1
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(J)Z
    .locals 1
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lcn/xutils/commons/function/FailableLongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcn/xutils/commons/function/FailableLongPredicate;->TRUE:Lcn/xutils/commons/function/FailableLongPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lcn/xutils/commons/function/FailableLongPredicate;)Lcn/xutils/commons/function/FailableLongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    .local p1, "other":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda3;-><init>(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public negate()Lcn/xutils/commons/function/FailableLongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    new-instance v0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda4;-><init>(Lcn/xutils/commons/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public or(Lcn/xutils/commons/function/FailableLongPredicate;)Lcn/xutils/commons/function/FailableLongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    .local p1, "other":Lcn/xutils/commons/function/FailableLongPredicate;, "Lcn/xutils/commons/function/FailableLongPredicate<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;)V

    return-object v0
.end method

.method public abstract test(J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

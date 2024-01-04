.class public interface abstract Lcn/xutils/commons/function/FailableBiPredicate;
.super Ljava/lang/Object;
.source "FailableBiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lcn/xutils/commons/function/FailableBiPredicate;

.field public static final TRUE:Lcn/xutils/commons/function/FailableBiPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableBiPredicate;->FALSE:Lcn/xutils/commons/function/FailableBiPredicate;

    .line 40
    new-instance v0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableBiPredicate;->TRUE:Lcn/xutils/commons/function/FailableBiPredicate;

    return-void
.end method

.method public static falsePredicate()Lcn/xutils/commons/function/FailableBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcn/xutils/commons/function/FailableBiPredicate;->FALSE:Lcn/xutils/commons/function/FailableBiPredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p1, "other"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$negate$3(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p1, "other"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lcn/xutils/commons/function/FailableBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcn/xutils/commons/function/FailableBiPredicate;->TRUE:Lcn/xutils/commons/function/FailableBiPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lcn/xutils/commons/function/FailableBiPredicate;)Lcn/xutils/commons/function/FailableBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    .local p1, "other":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<-TT;-TU;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda4;-><init>(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public negate()Lcn/xutils/commons/function/FailableBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    new-instance v0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/commons/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public or(Lcn/xutils/commons/function/FailableBiPredicate;)Lcn/xutils/commons/function/FailableBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    .local p1, "other":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<-TT;-TU;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableBiPredicate$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableBiPredicate;Lcn/xutils/commons/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

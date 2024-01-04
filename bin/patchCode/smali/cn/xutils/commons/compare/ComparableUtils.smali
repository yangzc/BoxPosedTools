.class public Lcn/xutils/commons/compare/ComparableUtils;
.super Ljava/lang/Object;
.source "ComparableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 137
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    .local p1, "c":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static betweenExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 149
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    .local p1, "c":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static ge(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 161
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static gt(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 172
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;)",
            "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 183
    .local p0, "a":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;-><init>(Ljava/lang/Comparable;Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder-IA;)V

    return-object v0
.end method

.method static synthetic lambda$between$0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "c"    # Ljava/lang/Comparable;
    .param p2, "a"    # Ljava/lang/Comparable;

    .line 137
    invoke-static {p2}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$betweenExclusive$1(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "c"    # Ljava/lang/Comparable;
    .param p2, "a"    # Ljava/lang/Comparable;

    .line 149
    invoke-static {p2}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->betweenExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ge$2(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "a"    # Ljava/lang/Comparable;

    .line 161
    invoke-static {p1}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->greaterThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$gt$3(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "a"    # Ljava/lang/Comparable;

    .line 172
    invoke-static {p1}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->greaterThan(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$le$4(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "a"    # Ljava/lang/Comparable;

    .line 195
    invoke-static {p1}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->lessThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$lt$5(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Comparable;
    .param p1, "a"    # Ljava/lang/Comparable;

    .line 206
    invoke-static {p1}, Lcn/xutils/commons/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->lessThan(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public static le(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 195
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static lt(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;)",
            "Ljava/util/function/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 206
    .local p0, "b":Ljava/lang/Comparable;, "TA;"
    new-instance v0, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/xutils/commons/compare/ComparableUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;TA;)TA;"
        }
    .end annotation

    .line 223
    .local p0, "comparable1":Ljava/lang/Comparable;, "TA;"
    .local p1, "comparable2":Ljava/lang/Comparable;, "TA;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable<",
            "TA;>;>(TA;TA;)TA;"
        }
    .end annotation

    .line 240
    .local p0, "comparable1":Ljava/lang/Comparable;, "TA;"
    .local p1, "comparable2":Ljava/lang/Comparable;, "TA;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

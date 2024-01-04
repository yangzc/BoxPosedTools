.class public Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;
.super Ljava/lang/Object;
.source "ComparableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/compare/ComparableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparableCheckBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/Comparable<",
        "TA;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "a":Ljava/lang/Comparable;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Comparable;Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method private betweenOrdered(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    .local p2, "c":Ljava/lang/Comparable;, "TA;"
    invoke-virtual {p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->greaterThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->lessThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private betweenOrderedExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    .local p2, "c":Ljava/lang/Comparable;, "TA;"
    invoke-virtual {p0, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->greaterThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->lessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    .local p2, "c":Ljava/lang/Comparable;, "TA;"
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->betweenOrdered(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->betweenOrdered(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

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

.method public betweenExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    .local p2, "c":Ljava/lang/Comparable;, "TA;"
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->betweenOrderedExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->betweenOrderedExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

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

.method public equalTo(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    iget-object v0, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greaterThan(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    iget-object v0, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    iget-object v0, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lessThan(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    iget-object v0, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lessThanOrEqualTo(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;, "Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder<TA;>;"
    .local p1, "b":Ljava/lang/Comparable;, "TA;"
    iget-object v0, p0, Lcn/xutils/commons/compare/ComparableUtils$ComparableCheckBuilder;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

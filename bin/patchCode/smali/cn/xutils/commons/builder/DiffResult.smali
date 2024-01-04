.class public Lcn/xutils/commons/builder/DiffResult;
.super Ljava/lang/Object;
.source "DiffResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcn/xutils/commons/builder/Diff<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DIFFERS_STRING:Ljava/lang/String; = "differs from"

.field public static final OBJECTS_SAME_STRING:Ljava/lang/String; = ""


# instance fields
.field private final diffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/xutils/commons/builder/Diff<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final rhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final style:Lcn/xutils/commons/builder/ToStringStyle;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p4, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/util/List<",
            "Lcn/xutils/commons/builder/Diff<",
            "*>;>;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    .local p3, "diffList":Ljava/util/List;, "Ljava/util/List<Lcn/xutils/commons/builder/Diff<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "lhs"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "rhs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v0, "diffList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p3, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffResult;->lhs:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, Lcn/xutils/commons/builder/DiffResult;->rhs:Ljava/lang/Object;

    .line 79
    if-nez p4, :cond_0

    .line 80
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle;->DEFAULT_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    iput-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->style:Lcn/xutils/commons/builder/ToStringStyle;

    goto :goto_0

    .line 82
    :cond_0
    iput-object p4, p0, Lcn/xutils/commons/builder/DiffResult;->style:Lcn/xutils/commons/builder/ToStringStyle;

    .line 84
    :goto_0
    return-void
.end method

.method static synthetic lambda$toString$0(Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/Diff;)V
    .locals 2
    .param p0, "lhsBuilder"    # Lcn/xutils/commons/builder/ToStringBuilder;
    .param p1, "rhsBuilder"    # Lcn/xutils/commons/builder/ToStringBuilder;
    .param p2, "diff"    # Lcn/xutils/commons/builder/Diff;

    .line 186
    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;

    .line 187
    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/xutils/commons/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;

    .line 188
    return-void
.end method


# virtual methods
.method public getDiffs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/xutils/commons/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->lhs:Ljava/lang/Object;

    return-object v0
.end method

.method public getNumberOfDiffs()I
    .locals 1

    .line 122
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->rhs:Ljava/lang/Object;

    return-object v0
.end method

.method public getToStringStyle()Lcn/xutils/commons/builder/ToStringStyle;
    .locals 1

    .line 131
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->style:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/xutils/commons/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->style:Lcn/xutils/commons/builder/ToStringStyle;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/DiffResult;->toString(Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;
    .locals 5
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 178
    .local p0, "this":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, ""

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcn/xutils/commons/builder/ToStringBuilder;

    iget-object v1, p0, Lcn/xutils/commons/builder/DiffResult;->lhs:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V

    .line 183
    .local v0, "lhsBuilder":Lcn/xutils/commons/builder/ToStringBuilder;
    new-instance v1, Lcn/xutils/commons/builder/ToStringBuilder;

    iget-object v2, p0, Lcn/xutils/commons/builder/DiffResult;->rhs:Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V

    .line 185
    .local v1, "rhsBuilder":Lcn/xutils/commons/builder/ToStringBuilder;
    iget-object v2, p0, Lcn/xutils/commons/builder/DiffResult;->diffList:Ljava/util/List;

    new-instance v3, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/ToStringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 190
    invoke-virtual {v0}, Lcn/xutils/commons/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v2

    const-string v3, "differs from"

    invoke-virtual {v1}, Lcn/xutils/commons/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s %s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

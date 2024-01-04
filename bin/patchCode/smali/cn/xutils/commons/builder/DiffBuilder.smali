.class public Lcn/xutils/commons/builder/DiffBuilder;
.super Ljava/lang/Object;
.source "DiffBuilder.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Lcn/xutils/commons/builder/DiffResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final diffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/xutils/commons/builder/Diff<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final objectsTriviallyEqual:Z

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final style:Lcn/xutils/commons/builder/ToStringStyle;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p3, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/xutils/commons/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Z)V
    .locals 1
    .param p3, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p4, "testTriviallyEqual"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "Z)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v0, "lhs"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    const-string v0, "rhs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder;->left:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Lcn/xutils/commons/builder/DiffBuilder;->right:Ljava/lang/Object;

    .line 114
    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    .line 117
    if-eqz p4, :cond_0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    .line 118
    return-void
.end method

.method private validateFieldNameNotNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 933
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    const-string v0, "fieldName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 934
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;BB)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # B
    .param p3, "rhs"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "BB)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 242
    return-object p0

    .line 244
    :cond_0
    if-eq p2, p3, :cond_1

    .line 245
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$3;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;BB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;CC)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # C
    .param p3, "rhs"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "CC)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 317
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 318
    return-object p0

    .line 320
    :cond_0
    if-eq p2, p3, :cond_1

    .line 321
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$5;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;DD)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # D
    .param p4, "rhs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 394
    return-object p0

    .line 396
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v8, Lcn/xutils/commons/builder/DiffBuilder$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/xutils/commons/builder/DiffBuilder$7;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;DD)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;FF)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # F
    .param p3, "rhs"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 469
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 470
    return-object p0

    .line 472
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$9;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # I
    .param p3, "rhs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 545
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 546
    return-object p0

    .line 548
    :cond_0
    if-eq p2, p3, :cond_1

    .line 549
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$11;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;JJ)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # J
    .param p4, "rhs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 621
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 622
    return-object p0

    .line 624
    :cond_0
    cmp-long v0, p2, p4

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v8, Lcn/xutils/commons/builder/DiffBuilder$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/xutils/commons/builder/DiffBuilder$13;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;JJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;Lcn/xutils/commons/builder/DiffResult;)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/builder/DiffResult<",
            "TT;>;)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 911
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    .local p2, "diffResult":Lcn/xutils/commons/builder/DiffResult;, "Lcn/xutils/commons/builder/DiffResult<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 912
    const-string v0, "diffResult"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 913
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 914
    return-object p0

    .line 916
    :cond_0
    invoke-virtual {p2}, Lcn/xutils/commons/builder/DiffResult;->getDiffs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 917
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # Ljava/lang/Object;
    .param p3, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 772
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 773
    return-object p0

    .line 775
    :cond_0
    if-ne p2, p3, :cond_1

    .line 776
    return-object p0

    .line 780
    :cond_1
    if-eqz p2, :cond_2

    .line 781
    move-object v0, p2

    .local v0, "objectToTest":Ljava/lang/Object;
    goto :goto_0

    .line 784
    .end local v0    # "objectToTest":Ljava/lang/Object;
    :cond_2
    move-object v0, p3

    .line 787
    .restart local v0    # "objectToTest":Ljava/lang/Object;
    :goto_0
    invoke-static {v0}, Lcn/xutils/commons/ObjectUtils;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 788
    instance-of v1, v0, [Z

    if-eqz v1, :cond_3

    .line 789
    move-object v1, p2

    check-cast v1, [Z

    move-object v2, p3

    check-cast v2, [Z

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[Z[Z)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 791
    :cond_3
    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 792
    move-object v1, p2

    check-cast v1, [B

    move-object v2, p3

    check-cast v2, [B

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[B[B)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 794
    :cond_4
    instance-of v1, v0, [C

    if-eqz v1, :cond_5

    .line 795
    move-object v1, p2

    check-cast v1, [C

    move-object v2, p3

    check-cast v2, [C

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[C[C)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 797
    :cond_5
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 798
    move-object v1, p2

    check-cast v1, [D

    move-object v2, p3

    check-cast v2, [D

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[D[D)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 800
    :cond_6
    instance-of v1, v0, [F

    if-eqz v1, :cond_7

    .line 801
    move-object v1, p2

    check-cast v1, [F

    move-object v2, p3

    check-cast v2, [F

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[F[F)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 803
    :cond_7
    instance-of v1, v0, [I

    if-eqz v1, :cond_8

    .line 804
    move-object v1, p2

    check-cast v1, [I

    move-object v2, p3

    check-cast v2, [I

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[I[I)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 806
    :cond_8
    instance-of v1, v0, [J

    if-eqz v1, :cond_9

    .line 807
    move-object v1, p2

    check-cast v1, [J

    move-object v2, p3

    check-cast v2, [J

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[J[J)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 809
    :cond_9
    instance-of v1, v0, [S

    if-eqz v1, :cond_a

    .line 810
    move-object v1, p2

    check-cast v1, [S

    move-object v2, p3

    check-cast v2, [S

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[S[S)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 813
    :cond_a
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;

    move-result-object v1

    return-object v1

    .line 817
    :cond_b
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 818
    return-object p0

    .line 821
    :cond_c
    iget-object v1, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v2, Lcn/xutils/commons/builder/DiffBuilder$17;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$17;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    return-object p0
.end method

.method public append(Ljava/lang/String;SS)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # S
    .param p3, "rhs"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "SS)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 695
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 697
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 698
    return-object p0

    .line 700
    :cond_0
    if-eq p2, p3, :cond_1

    .line 701
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$15;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;SS)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;ZZ)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # Z
    .param p3, "rhs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 168
    return-object p0

    .line 170
    :cond_0
    if-eq p2, p3, :cond_1

    .line 171
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$1;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[B[B)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [B
    .param p3, "rhs"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 280
    return-object p0

    .line 282
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$4;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[B[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[C[C)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [C
    .param p3, "rhs"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C[C)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 356
    return-object p0

    .line 358
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$6;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[C[C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[D[D)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [D
    .param p3, "rhs"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D[D)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 431
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 432
    return-object p0

    .line 434
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$8;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[F[F)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [F
    .param p3, "rhs"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F[F)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 508
    return-object p0

    .line 510
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$10;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[F[F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[I[I)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [I
    .param p3, "rhs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I[I)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 581
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 583
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 584
    return-object p0

    .line 586
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$12;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[I[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[J[J)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [J
    .param p3, "rhs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J[J)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 659
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 660
    return-object p0

    .line 662
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$14;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[J[J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [Ljava/lang/Object;
    .param p3, "rhs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 853
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 854
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 855
    return-object p0

    .line 858
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$18;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[S[S)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [S
    .param p3, "rhs"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[S[S)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 733
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 735
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 736
    return-object p0

    .line 738
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$16;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[S[S)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z[Z)Lcn/xutils/commons/builder/DiffBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "lhs"    # [Z
    .param p3, "rhs"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z[Z)",
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_0

    .line 205
    return-object p0

    .line 207
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lcn/xutils/commons/builder/DiffBuilder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder$2;-><init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[Z[Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    return-object p0
.end method

.method public build()Lcn/xutils/commons/builder/DiffResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/builder/DiffResult<",
            "TT;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    new-instance v0, Lcn/xutils/commons/builder/DiffResult;

    iget-object v1, p0, Lcn/xutils/commons/builder/DiffBuilder;->left:Ljava/lang/Object;

    iget-object v2, p0, Lcn/xutils/commons/builder/DiffBuilder;->right:Ljava/lang/Object;

    iget-object v3, p0, Lcn/xutils/commons/builder/DiffBuilder;->diffs:Ljava/util/List;

    iget-object v4, p0, Lcn/xutils/commons/builder/DiffBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/xutils/commons/builder/DiffResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lcn/xutils/commons/builder/ToStringStyle;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 71
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder;->build()Lcn/xutils/commons/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$append$0$cn-xutils-commons-builder-DiffBuilder(Ljava/lang/String;Lcn/xutils/commons/builder/Diff;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "diff"    # Lcn/xutils/commons/builder/Diff;

    .line 916
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder;, "Lcn/xutils/commons/builder/DiffBuilder<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcn/xutils/commons/builder/Diff;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;

    return-void
.end method

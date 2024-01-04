.class Lcn/xutils/commons/builder/DiffBuilder$7;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;DD)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:D

.field final synthetic val$rhs:D


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;DD)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 397
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$7;, "Lcn/xutils/commons/builder/DiffBuilder$7;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$7;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-wide p3, p0, Lcn/xutils/commons/builder/DiffBuilder$7;->val$lhs:D

    iput-wide p5, p0, Lcn/xutils/commons/builder/DiffBuilder$7;->val$rhs:D

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Double;
    .locals 2

    .line 402
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$7;, "Lcn/xutils/commons/builder/DiffBuilder$7;"
    iget-wide v0, p0, Lcn/xutils/commons/builder/DiffBuilder$7;->val$lhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 397
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$7;, "Lcn/xutils/commons/builder/DiffBuilder$7;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$7;->getLeft()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Double;
    .locals 2

    .line 407
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$7;, "Lcn/xutils/commons/builder/DiffBuilder$7;"
    iget-wide v0, p0, Lcn/xutils/commons/builder/DiffBuilder$7;->val$rhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 397
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$7;, "Lcn/xutils/commons/builder/DiffBuilder$7;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$7;->getRight()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

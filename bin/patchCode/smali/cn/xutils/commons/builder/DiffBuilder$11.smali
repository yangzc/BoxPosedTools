.class Lcn/xutils/commons/builder/DiffBuilder$11;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:I

.field final synthetic val$rhs:I


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 549
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$11;, "Lcn/xutils/commons/builder/DiffBuilder$11;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$11;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput p3, p0, Lcn/xutils/commons/builder/DiffBuilder$11;->val$lhs:I

    iput p4, p0, Lcn/xutils/commons/builder/DiffBuilder$11;->val$rhs:I

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Integer;
    .locals 1

    .line 554
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$11;, "Lcn/xutils/commons/builder/DiffBuilder$11;"
    iget v0, p0, Lcn/xutils/commons/builder/DiffBuilder$11;->val$lhs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 549
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$11;, "Lcn/xutils/commons/builder/DiffBuilder$11;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$11;->getLeft()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Integer;
    .locals 1

    .line 559
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$11;, "Lcn/xutils/commons/builder/DiffBuilder$11;"
    iget v0, p0, Lcn/xutils/commons/builder/DiffBuilder$11;->val$rhs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 549
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$11;, "Lcn/xutils/commons/builder/DiffBuilder$11;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$11;->getRight()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

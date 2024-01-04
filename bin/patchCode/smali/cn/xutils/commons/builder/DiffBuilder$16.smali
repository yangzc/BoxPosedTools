.class Lcn/xutils/commons/builder/DiffBuilder$16;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[S[S)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[S

.field final synthetic val$rhs:[S


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[S[S)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 739
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$16;, "Lcn/xutils/commons/builder/DiffBuilder$16;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$16;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$16;->val$lhs:[S

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$16;->val$rhs:[S

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 739
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$16;, "Lcn/xutils/commons/builder/DiffBuilder$16;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$16;->getLeft()[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Short;
    .locals 1

    .line 744
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$16;, "Lcn/xutils/commons/builder/DiffBuilder$16;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$16;->val$lhs:[S

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([S)[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 739
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$16;, "Lcn/xutils/commons/builder/DiffBuilder$16;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$16;->getRight()[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Short;
    .locals 1

    .line 749
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$16;, "Lcn/xutils/commons/builder/DiffBuilder$16;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$16;->val$rhs:[S

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([S)[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

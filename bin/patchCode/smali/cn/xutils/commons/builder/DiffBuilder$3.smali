.class Lcn/xutils/commons/builder/DiffBuilder$3;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;BB)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:B

.field final synthetic val$rhs:B


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;BB)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 245
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$3;, "Lcn/xutils/commons/builder/DiffBuilder$3;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$3;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-byte p3, p0, Lcn/xutils/commons/builder/DiffBuilder$3;->val$lhs:B

    iput-byte p4, p0, Lcn/xutils/commons/builder/DiffBuilder$3;->val$rhs:B

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Byte;
    .locals 1

    .line 250
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$3;, "Lcn/xutils/commons/builder/DiffBuilder$3;"
    iget-byte v0, p0, Lcn/xutils/commons/builder/DiffBuilder$3;->val$lhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 245
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$3;, "Lcn/xutils/commons/builder/DiffBuilder$3;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$3;->getLeft()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Byte;
    .locals 1

    .line 255
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$3;, "Lcn/xutils/commons/builder/DiffBuilder$3;"
    iget-byte v0, p0, Lcn/xutils/commons/builder/DiffBuilder$3;->val$rhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 245
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$3;, "Lcn/xutils/commons/builder/DiffBuilder$3;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$3;->getRight()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

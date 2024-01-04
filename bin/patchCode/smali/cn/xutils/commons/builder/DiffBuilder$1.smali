.class Lcn/xutils/commons/builder/DiffBuilder$1;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;ZZ)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:Z

.field final synthetic val$rhs:Z


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 171
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$1;, "Lcn/xutils/commons/builder/DiffBuilder$1;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$1;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-boolean p3, p0, Lcn/xutils/commons/builder/DiffBuilder$1;->val$lhs:Z

    iput-boolean p4, p0, Lcn/xutils/commons/builder/DiffBuilder$1;->val$rhs:Z

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Boolean;
    .locals 1

    .line 176
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$1;, "Lcn/xutils/commons/builder/DiffBuilder$1;"
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder$1;->val$lhs:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 171
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$1;, "Lcn/xutils/commons/builder/DiffBuilder$1;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$1;->getLeft()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Boolean;
    .locals 1

    .line 181
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$1;, "Lcn/xutils/commons/builder/DiffBuilder$1;"
    iget-boolean v0, p0, Lcn/xutils/commons/builder/DiffBuilder$1;->val$rhs:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 171
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$1;, "Lcn/xutils/commons/builder/DiffBuilder$1;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$1;->getRight()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

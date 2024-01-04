.class Lcn/xutils/commons/builder/DiffBuilder$18;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[Ljava/lang/Object;

.field final synthetic val$rhs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 859
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$18;, "Lcn/xutils/commons/builder/DiffBuilder$18;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$18;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$18;->val$lhs:[Ljava/lang/Object;

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$18;->val$rhs:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 859
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$18;, "Lcn/xutils/commons/builder/DiffBuilder$18;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$18;->getLeft()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Object;
    .locals 1

    .line 864
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$18;, "Lcn/xutils/commons/builder/DiffBuilder$18;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$18;->val$lhs:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 859
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$18;, "Lcn/xutils/commons/builder/DiffBuilder$18;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$18;->getRight()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Object;
    .locals 1

    .line 869
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$18;, "Lcn/xutils/commons/builder/DiffBuilder$18;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$18;->val$rhs:[Ljava/lang/Object;

    return-object v0
.end method

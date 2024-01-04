.class public abstract Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/callbacks/XCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;
    }
.end annotation


# instance fields
.field public final callbacks:[Lcn/xutils/boxposed/api/callbacks/XCallback;

.field private extra:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->callbacks:[Lcn/xutils/boxposed/api/callbacks/XCallback;

    .line 79
    return-void
.end method

.method protected constructor <init>([Lcn/xutils/boxposed/api/callbacks/XCallback;)V
    .locals 0
    .param p1, "callbacks"    # [Lcn/xutils/boxposed/api/callbacks/XCallback;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->callbacks:[Lcn/xutils/boxposed/api/callbacks/XCallback;

    .line 86
    return-void
.end method


# virtual methods
.method public declared-synchronized getExtra()Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    .line 100
    .end local p0    # "this":Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
    :cond_0
    iget-object v0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 108
    .local v0, "o":Ljava/io/Serializable;
    instance-of v1, v0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    check-cast v1, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;

    invoke-static {v1}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;->-$$Nest$fgetobject(Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;

    invoke-direct {v1, p2}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    return-void
.end method

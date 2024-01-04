.class public final Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopyOnWriteSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 333
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-static {}, Lcn/xutils/boxposed/api/XposedBridge;->-$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 364
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    return v0

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .local v0, "index":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 340
    monitor-exit p0

    return v1

    .line 342
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v4, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    iget-object v5, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v2, v1

    .line 345
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 346
    iput-object v2, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    monitor-exit p0

    return v3

    .line 337
    .end local v0    # "index":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local p0    # "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    monitor-enter p0

    .line 381
    :try_start_0
    invoke-static {}, Lcn/xutils/boxposed/api/XposedBridge;->-$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 380
    .end local p0    # "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSnapshot()[Ljava/lang/Object;
    .locals 1

    .line 372
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSnapshot([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 352
    :try_start_0
    invoke-direct {p0, p1}, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 354
    monitor-exit p0

    return v2

    .line 356
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 357
    .local v1, "newElements":[Ljava/lang/Object;
    iget-object v4, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iget-object v2, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v3

    invoke-static {v2, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iput-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    monitor-exit p0

    return v3

    .line 351
    .end local v0    # "index":I
    .end local v1    # "newElements":[Ljava/lang/Object;
    .end local p0    # "this":Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet;, "Lcn/xutils/boxposed/api/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

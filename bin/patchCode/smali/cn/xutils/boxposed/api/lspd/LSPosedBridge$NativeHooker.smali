.class public Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;
.super Ljava/lang/Object;
.source "LSPosedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/lspd/LSPosedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeHooker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/Executable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final params:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Executable;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Executable;

    .line 69
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;, "Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/reflect/Executable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    .line 72
    .local v0, "isStatic":Z
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 73
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "returnType":Ljava/lang/Object;
    goto :goto_0

    .line 75
    .end local v1    # "returnType":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .line 77
    .restart local v1    # "returnType":Ljava/lang/Object;
    :goto_0
    nop

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;->params:Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;, "Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker<TT;>;"
    move-object/from16 v1, p1

    new-instance v0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    invoke-direct {v0}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;-><init>()V

    move-object v2, v0

    .line 89
    .local v2, "callback":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    move-object/from16 v3, p0

    iget-object v0, v3, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$NativeHooker;->params:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 91
    .local v4, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v0, v4, v5

    move-object v6, v0

    check-cast v6, Ljava/lang/reflect/Executable;

    .line 92
    .local v6, "method":Ljava/lang/reflect/Executable;, "TT;"
    const/4 v7, 0x1

    aget-object v0, v4, v7

    move-object v8, v0

    check-cast v8, Ljava/lang/Class;

    .line 93
    .local v8, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    aget-object v0, v4, v9

    move-object v10, v0

    check-cast v10, Ljava/lang/Boolean;

    .line 95
    .local v10, "isStatic":Ljava/lang/Boolean;
    iput-object v6, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->method:Ljava/lang/reflect/Member;

    .line 97
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 98
    iput-object v11, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    .line 99
    iput-object v1, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_0
    aget-object v0, v1, v5

    iput-object v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    .line 102
    array-length v0, v1

    sub-int/2addr v0, v7

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v12, v1

    sub-int/2addr v12, v7

    if-ge v0, v12, :cond_1

    .line 105
    iget-object v12, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    add-int/lit8 v13, v0, 0x1

    aget-object v13, v1, v13

    aput-object v13, v12, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_1
    :goto_1
    const-class v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;

    invoke-static {v0, v6}, Lorg/lsposed/lspd/nativebridge/HookBridge;->callbackSnapshot(Ljava/lang/Class;Ljava/lang/reflect/Executable;)[[Ljava/lang/Object;

    move-result-object v12

    .line 110
    .local v12, "callbacksSnapshot":[[Ljava/lang/Object;
    aget-object v13, v12, v5

    .line 111
    .local v13, "modernSnapshot":[Ljava/lang/Object;
    aget-object v14, v12, v7

    .line 113
    .local v14, "legacySnapshot":[Ljava/lang/Object;
    array-length v0, v13

    if-nez v0, :cond_2

    array-length v0, v14

    if-nez v0, :cond_2

    .line 115
    :try_start_0
    iget-object v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    iget-object v7, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lorg/lsposed/lspd/nativebridge/HookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->-$$Nest$sfgetgetCause()Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lorg/lsposed/lspd/nativebridge/HookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 121
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    array-length v0, v13

    new-array v15, v0, [Ljava/lang/Object;

    .line 122
    .local v15, "ctxArray":[Ljava/lang/Object;
    const/16 v16, 0x0

    .line 126
    .local v16, "legacy":Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;, "Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport<TT;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "beforeIdx":I
    :goto_2
    array-length v0, v13

    if-ge v9, v0, :cond_5

    .line 128
    :try_start_1
    aget-object v0, v13, v9

    check-cast v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;

    .line 129
    .local v0, "hooker":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
    iget v7, v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->beforeParams:I

    if-nez v7, :cond_3

    .line 130
    iget-object v7, v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->beforeInvocation:Ljava/lang/reflect/Method;

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v15, v9

    goto :goto_3

    .line 132
    :cond_3
    iget-object v5, v0, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->beforeInvocation:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v15, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v0    # "hooker":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
    :goto_3
    nop

    .line 143
    iget-boolean v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    if-eqz v0, :cond_4

    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    goto :goto_4

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->log(Ljava/lang/Throwable;)V

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->setResult(Ljava/lang/Object;)V

    .line 139
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    .line 140
    nop

    .line 126
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 150
    :cond_5
    :goto_4
    iget-boolean v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    if-nez v0, :cond_6

    array-length v0, v14

    if-eqz v0, :cond_6

    .line 152
    new-instance v0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;

    invoke-direct {v0, v2, v14}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;-><init>(Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;[Ljava/lang/Object;)V

    move-object/from16 v16, v0

    .line 153
    invoke-virtual/range {v16 .. v16}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->handleBefore()V

    .line 157
    :cond_6
    iget-boolean v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    if-nez v0, :cond_7

    .line 159
    :try_start_2
    iget-object v0, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    iget-object v5, v2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    invoke-static {v6, v0, v5}, Lorg/lsposed/lspd/nativebridge/HookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    .end local v0    # "result":Ljava/lang/Object;
    goto :goto_5

    .line 161
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->-$$Nest$sfgetgetCause()Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v5, v0, v11}, Lorg/lsposed/lspd/nativebridge/HookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 163
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2, v5}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->setThrowable(Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_7
    :goto_5
    add-int/lit8 v0, v9, -0x1

    move v5, v0

    .local v5, "afterIdx":I
    :goto_6
    if-ltz v5, :cond_b

    .line 169
    invoke-virtual {v2}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->getResult()Ljava/lang/Object;

    move-result-object v7

    .line 170
    .local v7, "lastResult":Ljava/lang/Object;
    invoke-virtual {v2}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->getThrowable()Ljava/lang/Throwable;

    move-result-object v11

    .line 171
    .local v11, "lastThrowable":Ljava/lang/Throwable;
    aget-object v0, v13, v5

    move-object v1, v0

    check-cast v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;

    .line 173
    .local v1, "hooker":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
    :try_start_3
    iget v0, v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterParams:I

    if-nez v0, :cond_8

    .line 174
    iget-object v0, v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterInvocation:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v20, v4

    const/4 v3, 0x0

    .end local v4    # "array":[Ljava/lang/Object;
    .local v20, "array":[Ljava/lang/Object;
    :try_start_4
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_7

    .line 175
    .end local v20    # "array":[Ljava/lang/Object;
    .restart local v4    # "array":[Ljava/lang/Object;
    :cond_8
    move-object/from16 v20, v4

    .end local v4    # "array":[Ljava/lang/Object;
    .restart local v20    # "array":[Ljava/lang/Object;
    iget v0, v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterParams:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 176
    iget-object v0, v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterInvocation:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_7

    .line 178
    :cond_9
    iget-object v0, v1, Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;->afterInvocation:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v17, 0x0

    :try_start_5
    aput-object v2, v4, v17

    aget-object v19, v15, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v18, 0x1

    :try_start_6
    aput-object v19, v4, v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    :goto_7
    goto :goto_a

    .line 180
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    const/16 v17, 0x0

    :goto_8
    const/16 v18, 0x1

    goto :goto_9

    .end local v20    # "array":[Ljava/lang/Object;
    .restart local v4    # "array":[Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v20, v4

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 181
    .end local v4    # "array":[Ljava/lang/Object;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v20    # "array":[Ljava/lang/Object;
    :goto_9
    invoke-static {v0}, Lcn/xutils/boxposed/api/lspd/LSPosedBridge;->log(Ljava/lang/Throwable;)V

    .line 184
    if-nez v11, :cond_a

    .line 185
    invoke-virtual {v2, v7}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->setResult(Ljava/lang/Object;)V

    goto :goto_a

    .line 187
    :cond_a
    invoke-virtual {v2, v11}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->setThrowable(Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "hooker":Lcn/xutils/boxposed/api/lspd/LSPosedBridge$HookerCallback;
    .end local v7    # "lastResult":Ljava/lang/Object;
    .end local v11    # "lastThrowable":Ljava/lang/Throwable;
    :goto_a
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v20

    goto :goto_6

    .end local v20    # "array":[Ljava/lang/Object;
    .restart local v4    # "array":[Ljava/lang/Object;
    :cond_b
    move-object/from16 v20, v4

    .line 192
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v5    # "afterIdx":I
    .restart local v20    # "array":[Ljava/lang/Object;
    if-eqz v16, :cond_c

    .line 193
    invoke-virtual/range {v16 .. v16}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->handleAfter()V

    .line 197
    :cond_c
    invoke-virtual {v2}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 198
    .restart local v0    # "t":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    .line 201
    invoke-virtual {v2}, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "result":Ljava/lang/Object;
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v1, v8}, Lorg/lsposed/lspd/nativebridge/HookBridge;->instanceOf(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_b

    .line 203
    :cond_d
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "Return value\'s type from hook callback does not match the hooked method"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_e
    :goto_b
    return-object v1

    .line 199
    .end local v1    # "result":Ljava/lang/Object;
    :cond_f
    throw v0
.end method

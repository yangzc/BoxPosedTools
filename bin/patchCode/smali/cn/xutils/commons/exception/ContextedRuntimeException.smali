.class public Lcn/xutils/commons/exception/ContextedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "ContextedRuntimeException.java"

# interfaces
.implements Lcn/xutils/commons/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 99
    new-instance v0, Lcn/xutils/commons/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lcn/xutils/commons/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcn/xutils/commons/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lcn/xutils/commons/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v0, Lcn/xutils/commons/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lcn/xutils/commons/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcn/xutils/commons/exception/ExceptionContext;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "context"    # Lcn/xutils/commons/exception/ExceptionContext;

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    if-nez p3, :cond_0

    .line 149
    new-instance v0, Lcn/xutils/commons/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lcn/xutils/commons/exception/DefaultExceptionContext;-><init>()V

    move-object p3, v0

    .line 151
    :cond_0
    iput-object p3, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    new-instance v0, Lcn/xutils/commons/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lcn/xutils/commons/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    .line 124
    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ContextedRuntimeException;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lcn/xutils/commons/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ExceptionContext;

    .line 170
    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ExceptionContext;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/exception/ContextedRuntimeException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ContextedRuntimeException;

    move-result-object p1

    return-object p1
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/xutils/commons/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0}, Lcn/xutils/commons/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0}, Lcn/xutils/commons/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lcn/xutils/commons/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lcn/xutils/commons/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "baseMessage"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lcn/xutils/commons/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 232
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/exception/ContextedRuntimeException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .locals 1

    .line 243
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ContextedRuntimeException;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcn/xutils/commons/exception/ContextedRuntimeException;->exceptionContext:Lcn/xutils/commons/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lcn/xutils/commons/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ExceptionContext;

    .line 189
    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ExceptionContext;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/exception/ContextedRuntimeException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/exception/ContextedRuntimeException;

    move-result-object p1

    return-object p1
.end method

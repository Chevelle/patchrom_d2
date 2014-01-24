.class public Lorg/apache/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "ContextedException.java"

# interfaces
.implements Lorg/apache/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 98
    new-instance v0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    new-instance v0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V
    .locals 0
    .parameter "message"
    .parameter "cause"
    .parameter "context"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    if-nez p3, :cond_0

    .line 148
    new-instance p3, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    .end local p3
    invoke-direct {p3}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    .line 150
    .restart local p3
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 122
    new-instance v0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 123
    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;
    .locals 1
    .parameter "label"
    .parameter "value"

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 169
    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "label"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "baseMessage"

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/exception/ContextedException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;
    .locals 1
    .parameter "label"
    .parameter "value"

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;

    .line 187
    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    move-result-object v0

    return-object v0
.end method

.class public Lcn/xutils/commons/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 136
    .local p0, "object":Ljava/io/Serializable;, "TT;"
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    .line 140
    .local v0, "objectData":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 142
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {p0}, Lcn/xutils/commons/ObjectUtils;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 143
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v3, Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v3, "in":Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v3}, Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    return-object v4

    .line 143
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "objectData":[B
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p0    # "object":Ljava/io/Serializable;, "TT;"
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    .end local v3    # "in":Lcn/xutils/commons/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v0    # "objectData":[B
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p0    # "object":Ljava/io/Serializable;, "TT;"
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 151
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Lcn/xutils/commons/SerializationException;

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s while reading cloned object data"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcn/xutils/commons/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 205
    const-string v0, "inputStream"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .local v0, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    nop

    .line 210
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    return-object v1

    .line 206
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    .end local v0    # "in":Ljava/io/ObjectInputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcn/xutils/commons/SerializationException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 1
    .param p0, "objectData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .line 173
    const-string v0, "objectData"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcn/xutils/commons/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 228
    .local p0, "obj":Ljava/io/Serializable;, "TT;"
    invoke-static {p0}, Lcn/xutils/commons/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 262
    const-string v0, "outputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    nop

    .line 268
    return-void

    .line 263
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "obj":Ljava/io/Serializable;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local p0    # "obj":Ljava/io/Serializable;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcn/xutils/commons/SerializationException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .locals 2
    .param p0, "obj"    # Ljava/io/Serializable;

    .line 240
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcn/xutils/commons/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

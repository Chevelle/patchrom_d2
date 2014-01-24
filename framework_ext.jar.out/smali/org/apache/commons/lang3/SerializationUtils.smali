.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, object:Ljava/io/Serializable;,"TT;"
    if-nez p0, :cond_1

    .line 78
    const/4 v5, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v5

    .line 80
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v4

    .line 81
    .local v4, objectData:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 86
    .local v2, in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :try_start_0
    new-instance v3, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    .end local v2           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .local v3, in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 102
    .local v5, readObject:Ljava/io/Serializable;,"TT;"
    if-eqz v3, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, ex:Ljava/io/IOException;
    new-instance v6, Lorg/apache/commons/lang3/SerializationException;

    const-string v7, "IOException on closing cloned object data InputStream."

    invoke-direct {v6, v7, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 96
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .end local v5           #readObject:Ljava/io/Serializable;,"TT;"
    .restart local v2       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catch_1
    move-exception v1

    .line 97
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_3
    new-instance v6, Lorg/apache/commons/lang3/SerializationException;

    const-string v7, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v6, v7, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    .line 102
    :goto_2
    if-eqz v2, :cond_2

    .line 103
    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 108
    :cond_2
    throw v6

    .line 98
    :catch_2
    move-exception v1

    .line 99
    .local v1, ex:Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v6, Lorg/apache/commons/lang3/SerializationException;

    const-string v7, "IOException while reading cloned object data"

    invoke-direct {v6, v7, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 106
    .restart local v1       #ex:Ljava/io/IOException;
    new-instance v6, Lorg/apache/commons/lang3/SerializationException;

    const-string v7, "IOException on closing cloned object data InputStream."

    invoke-direct {v6, v7, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 100
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v3       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v2       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    goto :goto_2

    .line 98
    .end local v2           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v3       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v2       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    goto :goto_3

    .line 96
    .end local v2           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v3       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v2       #in:Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    goto :goto_1
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "inputStream"

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The InputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_0
    const/4 v1, 0x0

    .line 189
    .local v1, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 198
    if-eqz v2, :cond_1

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :cond_1
    :goto_0
    return-object v3

    .line 192
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    .line 198
    :goto_2
    if-eqz v1, :cond_2

    .line 199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 204
    :cond_2
    :goto_3
    throw v3

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v3, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 196
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 194
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 192
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 3
    .parameter "objectData"

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte[] must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 220
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "obj"
    .parameter "outputStream"

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The OutputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, out:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .local v2, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 142
    if-eqz v2, :cond_1

    .line 143
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 138
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 142
    :goto_2
    if-eqz v1, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 148
    :cond_2
    :goto_3
    throw v3

    .line 145
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 140
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 138
    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .locals 2
    .parameter "obj"

    .prologue
    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 161
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

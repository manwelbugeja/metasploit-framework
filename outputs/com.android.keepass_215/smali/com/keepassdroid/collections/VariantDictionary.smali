.class public Lcom/keepassdroid/collections/VariantDictionary;
.super Ljava/lang/Object;
.source "VariantDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/collections/VariantDictionary$VdType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final VdVersion:I = 0x100

.field private static final VdmCritical:I = 0xff00

.field private static final VdmInfo:I = 0xff


# instance fields
.field private dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/collections/VariantDictionary$VdType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    return-void
.end method

.method public static deserialize(Lcom/keepassdroid/stream/LEDataInputStream;)Lcom/keepassdroid/collections/VariantDictionary;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/keepassdroid/collections/VariantDictionary;

    invoke-direct {v0}, Lcom/keepassdroid/collections/VariantDictionary;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    const-string v2, "Invalid format"

    const/16 v3, 0x100

    if-gt v1, v3, :cond_d

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_c

    int-to-byte v1, v1

    if-nez v1, :cond_1

    return-object v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result v3

    .line 111
    invoke-virtual {p0, v3}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v4

    .line 112
    array-length v5, v4

    if-ne v3, v5, :cond_b

    .line 115
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result v4

    .line 118
    invoke-virtual {p0, v4}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v6

    .line 119
    array-length v7, v6

    if-ne v4, v7, :cond_a

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v1, v7, :cond_9

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-eq v1, v9, :cond_8

    if-eq v1, v10, :cond_6

    const/16 v9, 0x18

    if-eq v1, v9, :cond_5

    const/16 v5, 0x42

    if-eq v1, v5, :cond_4

    const/16 v5, 0xc

    if-eq v1, v5, :cond_3

    const/16 v5, 0xd

    if-eq v1, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v4, v10, :cond_0

    .line 146
    invoke-static {v6, v8}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/keepassdroid/collections/VariantDictionary;->setInt64(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    if-ne v4, v7, :cond_0

    .line 141
    invoke-static {v6, v8}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/keepassdroid/collections/VariantDictionary;->setInt32(Ljava/lang/String;I)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {v0, v3, v6}, Lcom/keepassdroid/collections/VariantDictionary;->setByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 150
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/keepassdroid/collections/VariantDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-ne v4, v1, :cond_0

    .line 136
    aget-byte v4, v6, v8

    if-eqz v4, :cond_7

    const/4 v8, 0x1

    :cond_7
    invoke-virtual {v0, v3, v8}, Lcom/keepassdroid/collections/VariantDictionary;->setBool(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    if-ne v4, v10, :cond_0

    .line 131
    invoke-static {v6, v8}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/keepassdroid/collections/VariantDictionary;->setUInt64(Ljava/lang/String;J)V

    goto :goto_0

    :cond_9
    if-ne v4, v7, :cond_0

    .line 126
    invoke-static {v6, v8}, Lcom/keepassdroid/stream/LEDataInputStream;->readUInt([BI)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/keepassdroid/collections/VariantDictionary;->setUInt32(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 120
    :cond_a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_b
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    return-object p1
.end method

.method private putType(BLjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    new-instance v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    invoke-direct {v1, p0, p1, p3}, Lcom/keepassdroid/collections/VariantDictionary$VdType;-><init>(Lcom/keepassdroid/collections/VariantDictionary;BLjava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static serialize(Lcom/keepassdroid/collections/VariantDictionary;Lcom/keepassdroid/stream/LEDataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x100

    .line 170
    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I)V

    .line 172
    iget-object p0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    .line 184
    iget-byte v3, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->type:B

    invoke-virtual {p1, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 185
    array-length v3, v2

    invoke-virtual {p1, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 186
    invoke-virtual {p1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    .line 189
    iget-byte v2, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->type:B

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v4, 0x5

    const/16 v5, 0x8

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_5

    const/16 v4, 0x18

    if-eq v2, v4, :cond_4

    const/16 v4, 0x42

    if-eq v2, v4, :cond_3

    const/16 v4, 0xc

    if-eq v2, v4, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1, v5}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 209
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 205
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, [B

    .line 219
    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 220
    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 214
    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 215
    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 199
    invoke-virtual {p1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 200
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 201
    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    goto/16 :goto_0

    .line 195
    :cond_6
    invoke-virtual {p1, v5}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 196
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 191
    :cond_7
    invoke-virtual {p1, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 192
    iget-object v1, v1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUInt(J)V

    goto/16 :goto_0

    .line 179
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t encode parameter name."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 p0, 0x0

    .line 228
    invoke-virtual {p1, p0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/keepassdroid/collections/VariantDictionary;)V
    .locals 3

    .line 233
    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    .line 237
    iget-object v2, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBool(Ljava/lang/String;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/keepassdroid/collections/VariantDictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getInt32(Ljava/lang/String;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInt64(Ljava/lang/String;)J
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/keepassdroid/collections/VariantDictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUInt32(Ljava/lang/String;)J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUInt64(Ljava/lang/String;)J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;

    iget-object p1, p1, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1

    .line 76
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setByteArray(Ljava/lang/String;[B)V
    .locals 1

    const/16 v0, 0x42

    .line 88
    invoke-direct {p0, v0, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInt32(Ljava/lang/String;I)V
    .locals 1

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInt64(Ljava/lang/String;J)V
    .locals 0

    .line 82
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 p3, 0xd

    invoke-direct {p0, p3, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x18

    .line 85
    invoke-direct {p0, v0, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUInt32(Ljava/lang/String;J)V
    .locals 0

    .line 70
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x4

    invoke-direct {p0, p3, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUInt64(Ljava/lang/String;J)V
    .locals 0

    .line 73
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x5

    invoke-direct {p0, p3, p1, p2}, Lcom/keepassdroid/collections/VariantDictionary;->putType(BLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/keepassdroid/collections/VariantDictionary;->dict:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

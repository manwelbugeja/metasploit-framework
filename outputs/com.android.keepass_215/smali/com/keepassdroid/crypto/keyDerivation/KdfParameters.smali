.class public Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
.super Lcom/keepassdroid/collections/VariantDictionary;
.source "KdfParameters.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ParamUUID:Ljava/lang/String; = "$UUID"


# instance fields
.field public kdfUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/keepassdroid/collections/VariantDictionary;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    .line 40
    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const-string v0, "$UUID"

    invoke-virtual {p0, v0, p1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public static deserialize([B)Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    new-instance p0, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    invoke-static {p0}, Lcom/keepassdroid/collections/VariantDictionary;->deserialize(Lcom/keepassdroid/stream/LEDataInputStream;)Lcom/keepassdroid/collections/VariantDictionary;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "$UUID"

    .line 53
    invoke-virtual {p0, v1}, Lcom/keepassdroid/collections/VariantDictionary;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {v1}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->CIPHER_UUID:Ljava/util/UUID;

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 67
    :cond_2
    new-instance v0, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    invoke-direct {v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;-><init>(Ljava/util/UUID;)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->copyTo(Lcom/keepassdroid/collections/VariantDictionary;)V

    return-object v0
.end method

.method public static serialize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v1, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    invoke-static {p0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->serialize(Lcom/keepassdroid/collections/VariantDictionary;Lcom/keepassdroid/stream/LEDataOutputStream;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

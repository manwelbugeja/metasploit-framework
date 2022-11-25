.class public Lcom/keepassdroid/database/security/ProtectedBinary;
.super Ljava/lang/Object;
.source "ProtectedBinary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EMPTY:Lcom/keepassdroid/database/security/ProtectedBinary;

.field private static final TAG:Ljava/lang/String; = "com.keepassdroid.database.security.ProtectedBinary"

.field private static final secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private data:[B

.field private dataFile:Ljava/io/File;

.field private fileParams:Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;

.field private protect:Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-direct {v0}, Lcom/keepassdroid/database/security/ProtectedBinary;-><init>()V

    sput-object v0, Lcom/keepassdroid/database/security/ProtectedBinary;->EMPTY:Lcom/keepassdroid/database/security/ProtectedBinary;

    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/keepassdroid/database/security/ProtectedBinary;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    .line 127
    iput-object v1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    .line 128
    iput v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    return-void
.end method

.method public constructor <init>(ZLjava/io/File;I)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    .line 144
    iput-object p2, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    .line 145
    iput p3, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    .line 147
    new-instance p1, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;

    invoke-direct {p1, p0, p2}, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;-><init>(Lcom/keepassdroid/database/security/ProtectedBinary;Ljava/io/File;)V

    iput-object p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->fileParams:Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    .line 133
    iput-object p2, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 136
    array-length p1, p2

    iput p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/security/SecureRandom;
    .locals 1

    .line 47
    sget-object v0, Lcom/keepassdroid/database/security/ProtectedBinary;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    .line 166
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/keepassdroid/database/security/ProtectedBinary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete temp file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public equals(Lcom/keepassdroid/database/security/ProtectedBinary;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    iget-boolean v1, p1, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    iget v1, p1, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    iget-object v1, p1, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    .line 175
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    .line 177
    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getData()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljavax/crypto/CipherInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->fileParams:Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->initCipher(I)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->fileParams:Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;

    iget-object v0, v0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->cos:Ljavax/crypto/CipherOutputStream;

    return-object v0
.end method

.method public isProtected()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->protect:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->data:[B

    if-eqz v0, :cond_0

    .line 118
    array-length v0, v0

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->dataFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lcom/keepassdroid/database/security/ProtectedBinary;->size:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

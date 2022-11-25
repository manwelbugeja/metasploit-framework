.class public Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;
.super Ljava/lang/Object;
.source "KdfFactory.java"


# static fields
.field public static kdfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->kdfList:Ljava/util/List;

    .line 31
    new-instance v1, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;

    invoke-direct {v1}, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->kdfList:Ljava/util/List;

    new-instance v1, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;

    sget-object v2, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->D:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    invoke-direct {v1, v2}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;-><init>(Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->kdfList:Ljava/util/List;

    new-instance v1, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;

    sget-object v2, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->ID:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    invoke-direct {v1, v2}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;-><init>(Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/UUID;)Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;
    .locals 3

    .line 41
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->kdfList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;

    .line 42
    iget-object v2, v1, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
    .locals 2

    .line 37
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->kdfList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;

    invoke-virtual {v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    return-object v0
.end method

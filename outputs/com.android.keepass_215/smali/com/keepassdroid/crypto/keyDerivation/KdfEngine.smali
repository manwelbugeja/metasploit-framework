.class public abstract Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;
.super Ljava/lang/Object;
.source "KdfEngine.java"


# instance fields
.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
    .locals 2

    .line 29
    new-instance v0, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    iget-object v1, p0, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public abstract randomize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V
.end method

.method public abstract transform([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

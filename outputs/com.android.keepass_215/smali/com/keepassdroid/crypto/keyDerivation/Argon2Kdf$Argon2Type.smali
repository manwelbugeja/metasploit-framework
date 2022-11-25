.class public final enum Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;
.super Ljava/lang/Enum;
.source "Argon2Kdf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Argon2Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

.field public static final enum D:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

.field public static final enum ID:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    const-string v1, "D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->D:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    new-instance v1, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    const-string v3, "ID"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->ID:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    new-array v3, v5, [Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 29
    sput-object v3, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->$VALUES:[Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;
    .locals 1

    .line 29
    const-class v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    return-object p0
.end method

.method public static values()[Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;
    .locals 1

    .line 29
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->$VALUES:[Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    invoke-virtual {v0}, [Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->type:I

    return v0
.end method

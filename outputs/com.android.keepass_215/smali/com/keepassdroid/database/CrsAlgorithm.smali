.class public final enum Lcom/keepassdroid/database/CrsAlgorithm;
.super Ljava/lang/Enum;
.source "CrsAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keepassdroid/database/CrsAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keepassdroid/database/CrsAlgorithm;

.field public static final enum ArcFourVariant:Lcom/keepassdroid/database/CrsAlgorithm;

.field public static final enum ChaCha20:Lcom/keepassdroid/database/CrsAlgorithm;

.field public static final enum Null:Lcom/keepassdroid/database/CrsAlgorithm;

.field public static final enum Salsa20:Lcom/keepassdroid/database/CrsAlgorithm;

.field public static final count:I = 0x4


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/keepassdroid/database/CrsAlgorithm;

    const-string v1, "Null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/keepassdroid/database/CrsAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keepassdroid/database/CrsAlgorithm;->Null:Lcom/keepassdroid/database/CrsAlgorithm;

    .line 25
    new-instance v1, Lcom/keepassdroid/database/CrsAlgorithm;

    const-string v3, "ArcFourVariant"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/keepassdroid/database/CrsAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/keepassdroid/database/CrsAlgorithm;->ArcFourVariant:Lcom/keepassdroid/database/CrsAlgorithm;

    .line 26
    new-instance v3, Lcom/keepassdroid/database/CrsAlgorithm;

    const-string v5, "Salsa20"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/keepassdroid/database/CrsAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/keepassdroid/database/CrsAlgorithm;->Salsa20:Lcom/keepassdroid/database/CrsAlgorithm;

    .line 27
    new-instance v5, Lcom/keepassdroid/database/CrsAlgorithm;

    const-string v7, "ChaCha20"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/keepassdroid/database/CrsAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/keepassdroid/database/CrsAlgorithm;->ChaCha20:Lcom/keepassdroid/database/CrsAlgorithm;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/keepassdroid/database/CrsAlgorithm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 22
    sput-object v7, Lcom/keepassdroid/database/CrsAlgorithm;->$VALUES:[Lcom/keepassdroid/database/CrsAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/keepassdroid/database/CrsAlgorithm;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/keepassdroid/database/CrsAlgorithm;
    .locals 5

    .line 37
    invoke-static {}, Lcom/keepassdroid/database/CrsAlgorithm;->values()[Lcom/keepassdroid/database/CrsAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    iget v4, v3, Lcom/keepassdroid/database/CrsAlgorithm;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keepassdroid/database/CrsAlgorithm;
    .locals 1

    .line 22
    const-class v0, Lcom/keepassdroid/database/CrsAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keepassdroid/database/CrsAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/keepassdroid/database/CrsAlgorithm;
    .locals 1

    .line 22
    sget-object v0, Lcom/keepassdroid/database/CrsAlgorithm;->$VALUES:[Lcom/keepassdroid/database/CrsAlgorithm;

    invoke-virtual {v0}, [Lcom/keepassdroid/database/CrsAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keepassdroid/database/CrsAlgorithm;

    return-object v0
.end method

.class public final enum Lcom/keepassdroid/database/PwCompressionAlgorithm;
.super Ljava/lang/Enum;
.source "PwCompressionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keepassdroid/database/PwCompressionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keepassdroid/database/PwCompressionAlgorithm;

.field public static final enum Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

.field public static final enum None:Lcom/keepassdroid/database/PwCompressionAlgorithm;

.field public static final count:I = 0x2


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/keepassdroid/database/PwCompressionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;->None:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    .line 25
    new-instance v1, Lcom/keepassdroid/database/PwCompressionAlgorithm;

    const-string v3, "Gzip"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/keepassdroid/database/PwCompressionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/keepassdroid/database/PwCompressionAlgorithm;->Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/keepassdroid/database/PwCompressionAlgorithm;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 22
    sput-object v3, Lcom/keepassdroid/database/PwCompressionAlgorithm;->$VALUES:[Lcom/keepassdroid/database/PwCompressionAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/keepassdroid/database/PwCompressionAlgorithm;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/keepassdroid/database/PwCompressionAlgorithm;
    .locals 5

    .line 38
    invoke-static {}, Lcom/keepassdroid/database/PwCompressionAlgorithm;->values()[Lcom/keepassdroid/database/PwCompressionAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    iget v4, v3, Lcom/keepassdroid/database/PwCompressionAlgorithm;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keepassdroid/database/PwCompressionAlgorithm;
    .locals 1

    .line 22
    const-class v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keepassdroid/database/PwCompressionAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/keepassdroid/database/PwCompressionAlgorithm;
    .locals 1

    .line 22
    sget-object v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;->$VALUES:[Lcom/keepassdroid/database/PwCompressionAlgorithm;

    invoke-virtual {v0}, [Lcom/keepassdroid/database/PwCompressionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keepassdroid/database/PwCompressionAlgorithm;

    return-object v0
.end method

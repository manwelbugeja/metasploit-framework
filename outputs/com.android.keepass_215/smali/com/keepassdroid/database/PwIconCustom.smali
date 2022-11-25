.class public Lcom/keepassdroid/database/PwIconCustom;
.super Lcom/keepassdroid/database/PwIcon;
.source "PwIconCustom.java"


# static fields
.field public static final ZERO:Lcom/keepassdroid/database/PwIconCustom;


# instance fields
.field public imageData:[B

.field public lastMod:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/keepassdroid/database/PwIconCustom;

    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lcom/keepassdroid/database/PwIconCustom;-><init>(Ljava/util/UUID;[B)V

    sput-object v0, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/keepassdroid/database/PwIcon;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/keepassdroid/database/PwIconCustom;->lastMod:Ljava/util/Date;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/keepassdroid/database/PwIconCustom;->name:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    .line 36
    iput-object p2, p0, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 55
    :cond_2
    check-cast p1, Lcom/keepassdroid/database/PwIconCustom;

    .line 56
    iget-object v2, p0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    if-nez v2, :cond_3

    .line 57
    iget-object p1, p1, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    if-eqz p1, :cond_4

    return v1

    .line 59
    :cond_3
    iget-object p1, p1, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

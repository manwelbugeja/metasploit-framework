.class public Lcom/keepassdroid/database/PwIconStandard;
.super Lcom/keepassdroid/database/PwIcon;
.source "PwIconStandard.java"


# static fields
.field public static FIRST:Lcom/keepassdroid/database/PwIconStandard; = null

.field public static final FOLDER:I = 0x30

.field public static final TRASH_BIN:I = 0x2b


# instance fields
.field public final iconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/keepassdroid/database/PwIconStandard;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwIconStandard;-><init>(I)V

    sput-object v0, Lcom/keepassdroid/database/PwIconStandard;->FIRST:Lcom/keepassdroid/database/PwIconStandard;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/keepassdroid/database/PwIcon;-><init>()V

    .line 31
    iput p1, p0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

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
    check-cast p1, Lcom/keepassdroid/database/PwIconStandard;

    .line 56
    iget v2, p0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    iget p1, p1, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isMetaStreamIcon()Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

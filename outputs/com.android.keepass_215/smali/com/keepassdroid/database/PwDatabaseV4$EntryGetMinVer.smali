.class Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;
.super Lcom/keepassdroid/database/EntryHandler;
.source "PwDatabaseV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDatabaseV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryGetMinVer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/EntryHandler<",
        "Lcom/keepassdroid/database/PwEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public minVer:I

.field final synthetic this$0:Lcom/keepassdroid/database/PwDatabaseV4;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->this$0:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {p0}, Lcom/keepassdroid/database/EntryHandler;-><init>()V

    const/4 p1, 0x0

    .line 586
    iput p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDatabaseV4$1;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    return-void
.end method


# virtual methods
.method public operate(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 594
    :cond_0
    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    .line 595
    iget-boolean v1, p1, Lcom/keepassdroid/database/PwEntryV4;->qualityCheck:Z

    if-nez v1, :cond_1

    .line 596
    iget v1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    const v2, 0x40001

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    .line 598
    :cond_1
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwCustomData;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 599
    iget p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    const/high16 v1, 0x40000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    :cond_2
    return v0
.end method

.class Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;
.super Lcom/keepassdroid/database/GroupHandler;
.source "PwDatabaseV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDatabaseV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupGetMinVer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/GroupHandler<",
        "Lcom/keepassdroid/database/PwGroup;",
        ">;"
    }
.end annotation


# instance fields
.field public minVer:I

.field final synthetic this$0:Lcom/keepassdroid/database/PwDatabaseV4;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->this$0:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {p0}, Lcom/keepassdroid/database/GroupHandler;-><init>()V

    const/4 p1, 0x0

    .line 565
    iput p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDatabaseV4$1;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    return-void
.end method


# virtual methods
.method public operate(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 572
    :cond_0
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    .line 573
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 574
    iget v1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    const v2, 0x40001

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    .line 576
    :cond_1
    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwCustomData;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 577
    iget p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    const/high16 v1, 0x40000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    :cond_2
    return v0
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)Z
    .locals 0

    .line 563
    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->operate(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    return p1
.end method

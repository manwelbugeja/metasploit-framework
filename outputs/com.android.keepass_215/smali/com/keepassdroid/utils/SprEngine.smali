.class public Lcom/keepassdroid/utils/SprEngine;
.super Ljava/lang/Object;
.source "SprEngine.java"


# static fields
.field private static spr:Lcom/keepassdroid/utils/SprEngine;

.field private static sprV4:Lcom/keepassdroid/utils/SprEngineV4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/keepassdroid/utils/SprEngineV4;

    invoke-direct {v0}, Lcom/keepassdroid/utils/SprEngineV4;-><init>()V

    sput-object v0, Lcom/keepassdroid/utils/SprEngine;->sprV4:Lcom/keepassdroid/utils/SprEngineV4;

    .line 29
    new-instance v0, Lcom/keepassdroid/utils/SprEngine;

    invoke-direct {v0}, Lcom/keepassdroid/utils/SprEngine;-><init>()V

    sput-object v0, Lcom/keepassdroid/utils/SprEngine;->spr:Lcom/keepassdroid/utils/SprEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/utils/SprEngine;
    .locals 0

    .line 32
    instance-of p0, p0, Lcom/keepassdroid/database/PwDatabaseV4;

    if-eqz p0, :cond_0

    .line 33
    sget-object p0, Lcom/keepassdroid/utils/SprEngine;->sprV4:Lcom/keepassdroid/utils/SprEngineV4;

    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lcom/keepassdroid/utils/SprEngine;->spr:Lcom/keepassdroid/utils/SprEngine;

    return-object p0
.end method


# virtual methods
.method public compile(Ljava/lang/String;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

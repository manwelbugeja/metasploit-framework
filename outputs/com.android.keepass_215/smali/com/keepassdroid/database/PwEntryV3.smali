.class public Lcom/keepassdroid/database/PwEntryV3;
.super Lcom/keepassdroid/database/PwEntry;
.source "PwEntryV3.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_DATE:Ljava/util/Date;

.field public static final DEFAULT_PWDATE:Lcom/keepassdroid/database/PwDate;

.field public static final NEVER_EXPIRE:Ljava/util/Date;

.field public static final NEVER_EXPIRE_BUG:Ljava/util/Date;

.field public static final PMS_ID_BINDESC:Ljava/lang/String; = "bin-stream"

.field public static final PMS_ID_TITLE:Ljava/lang/String; = "Meta-Info"

.field public static final PMS_ID_URL:Ljava/lang/String; = "$"

.field public static final PMS_ID_USER:Ljava/lang/String; = "SYSTEM"

.field public static final PW_NEVER_EXPIRE:Lcom/keepassdroid/database/PwDate;

.field public static final PW_NEVER_EXPIRE_BUG:Lcom/keepassdroid/database/PwDate;


# instance fields
.field public additional:Ljava/lang/String;

.field private binaryData:[B

.field public binaryDesc:Ljava/lang/String;

.field public groupId:I

.field public parent:Lcom/keepassdroid/database/PwGroupV3;

.field private password:[B

.field public tCreation:Lcom/keepassdroid/database/PwDate;

.field public tExpire:Lcom/keepassdroid/database/PwDate;

.field public tLastAccess:Lcom/keepassdroid/database/PwDate;

.field public tLastMod:Lcom/keepassdroid/database/PwDate;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field private uuid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    invoke-static {}, Lcom/keepassdroid/database/PwEntryV3;->getNeverExpire()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/database/PwEntryV3;->NEVER_EXPIRE:Ljava/util/Date;

    .line 78
    invoke-static {}, Lcom/keepassdroid/database/PwEntryV3;->getNeverExpireBug()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/database/PwEntryV3;->NEVER_EXPIRE_BUG:Ljava/util/Date;

    .line 79
    invoke-static {}, Lcom/keepassdroid/database/PwEntryV3;->getDefaultDate()Ljava/util/Date;

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/PwEntryV3;->DEFAULT_DATE:Ljava/util/Date;

    .line 80
    new-instance v3, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v3, v0}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    sput-object v3, Lcom/keepassdroid/database/PwEntryV3;->PW_NEVER_EXPIRE:Lcom/keepassdroid/database/PwDate;

    .line 81
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    sput-object v0, Lcom/keepassdroid/database/PwEntryV3;->PW_NEVER_EXPIRE_BUG:Lcom/keepassdroid/database/PwDate;

    .line 82
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    sput-object v0, Lcom/keepassdroid/database/PwEntryV3;->DEFAULT_PWDATE:Lcom/keepassdroid/database/PwDate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntry;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwGroupV3;)V
    .locals 1

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, p1, v0, v0}, Lcom/keepassdroid/database/PwEntryV3;-><init>(Lcom/keepassdroid/database/PwGroupV3;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwGroupV3;ZZ)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntry;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    .line 178
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroupV3;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwGroupIdV3;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroupIdV3;->getId()I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    if-eqz p2, :cond_0

    .line 181
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x10

    new-array p2, p2, [B

    .line 182
    iput-object p2, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    .line 183
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    :cond_0
    if-eqz p3, :cond_1

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    .line 190
    new-instance p2, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    .line 191
    new-instance p2, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    .line 192
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    sget-object p2, Lcom/keepassdroid/database/PwEntryV3;->NEVER_EXPIRE:Ljava/util/Date;

    invoke-direct {p1, p2}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    :cond_1
    return-void
.end method

.method public static IsNever(Ljava/util/Date;)Z
    .locals 1

    .line 154
    sget-object v0, Lcom/keepassdroid/database/PwEntryV3;->NEVER_EXPIRE:Ljava/util/Date;

    invoke-static {v0, p0}, Lcom/keepassdroid/database/PwDate;->IsSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private assign(Lcom/keepassdroid/database/PwEntryV3;)V
    .locals 4

    .line 301
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    .line 302
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    .line 303
    iget v0, p1, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    iput v0, p0, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    .line 304
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    .line 305
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    .line 308
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    array-length v0, v0

    .line 309
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    .line 310
    iget-object v2, p1, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDate;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    .line 313
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDate;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    .line 314
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDate;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    .line 315
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDate;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    .line 317
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    .line 319
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    if-eqz v0, :cond_0

    .line 320
    array-length v0, v0

    .line 321
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    .line 322
    iget-object v2, p1, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_0
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    return-void
.end method

.method private static fill([BB)V
    .locals 2

    const/4 v0, 0x0

    .line 219
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 220
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getDefaultDate()Ljava/util/Date;
    .locals 4

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x7d4

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 115
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    .line 116
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 117
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 118
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getNeverExpire()Ljava/util/Date;
    .locals 3

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xbb7

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v2, 0xb

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/16 v2, 0x1c

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    const/16 v2, 0x17

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x3b

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getNeverExpireBug()Ljava/util/Date;
    .locals 3

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xbb7

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v2, 0xb

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/16 v2, 0x1e

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    const/16 v2, 0x17

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x3b

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assign(Lcom/keepassdroid/database/PwEntry;)V
    .locals 1

    .line 289
    instance-of v0, p1, Lcom/keepassdroid/database/PwEntryV3;

    if-eqz v0, :cond_0

    .line 293
    invoke-super {p0, p1}, Lcom/keepassdroid/database/PwEntry;->assign(Lcom/keepassdroid/database/PwEntry;)V

    .line 295
    check-cast p1, Lcom/keepassdroid/database/PwEntryV3;

    .line 296
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwEntryV3;->assign(Lcom/keepassdroid/database/PwEntryV3;)V

    return-void

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "DB version mix"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 331
    invoke-super {p0}, Lcom/keepassdroid/database/PwEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV3;

    .line 333
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 334
    array-length v1, v1

    .line 335
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    .line 336
    iget-object v4, v0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwDate;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    .line 340
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwDate;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    .line 341
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwDate;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    .line 342
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwDate;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    .line 344
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    if-eqz v1, :cond_1

    .line 347
    array-length v1, v1

    .line 348
    new-array v3, v1, [B

    iput-object v3, v0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    .line 349
    iget-object v4, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    return-object v0
.end method

.method public expires()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/keepassdroid/database/PwEntryV3;->IsNever(Ljava/util/Date;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBinaryData()[B
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastModificationTime()Ljava/util/Date;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotes(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 449
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getParent()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntryV3;->getParent()Lcom/keepassdroid/database/PwGroupV3;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/keepassdroid/database/PwGroupV3;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    return-object v0
.end method

.method public getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 206
    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method public getPasswordBytes()[B
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    return-object v0
.end method

.method public getTitle(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 439
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    return-object p1
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    return-object p1
.end method

.method public getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 425
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public isMetaStream()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    const-string v2, "bin-stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    if-nez v0, :cond_3

    return v1

    :cond_3
    const-string v2, "Meta-Info"

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    if-nez v0, :cond_5

    return v1

    :cond_5
    const-string v2, "SYSTEM"

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    if-nez v0, :cond_7

    return v1

    :cond_7
    const-string v2, "$"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 280
    :cond_8
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwIconStandard;->isMetaStreamIcon()Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public populateBlankFields(Lcom/keepassdroid/database/PwDatabaseV3;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    if-nez v0, :cond_0

    .line 474
    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV3;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_1

    .line 478
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-array p1, v1, [B

    .line 482
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    .line 485
    :cond_2
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    if-nez p1, :cond_3

    .line 486
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    .line 489
    :cond_3
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 490
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 494
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    .line 497
    :cond_5
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 498
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    .line 501
    :cond_6
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    if-nez p1, :cond_7

    .line 502
    sget-object p1, Lcom/keepassdroid/database/PwEntryV3;->DEFAULT_PWDATE:Lcom/keepassdroid/database/PwDate;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    .line 505
    :cond_7
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    if-nez p1, :cond_8

    .line 506
    sget-object p1, Lcom/keepassdroid/database/PwEntryV3;->DEFAULT_PWDATE:Lcom/keepassdroid/database/PwDate;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    .line 509
    :cond_8
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    if-nez p1, :cond_9

    .line 510
    sget-object p1, Lcom/keepassdroid/database/PwEntryV3;->DEFAULT_PWDATE:Lcom/keepassdroid/database/PwDate;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    .line 513
    :cond_9
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    if-nez p1, :cond_a

    .line 514
    sget-object p1, Lcom/keepassdroid/database/PwEntryV3;->PW_NEVER_EXPIRE:Lcom/keepassdroid/database/PwDate;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    .line 517
    :cond_a
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    if-nez p1, :cond_b

    .line 518
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    .line 521
    :cond_b
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    if-nez p1, :cond_c

    new-array p1, v1, [B

    .line 522
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    :cond_c
    return-void
.end method

.method public setBinaryData([BII)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {v0, v1}, Lcom/keepassdroid/database/PwEntryV3;->fill([BB)V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    .line 264
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->binaryData:[B

    .line 265
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    return-void
.end method

.method public setExpires(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 399
    sget-object p1, Lcom/keepassdroid/database/PwEntryV3;->PW_NEVER_EXPIRE:Lcom/keepassdroid/database/PwDate;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    :cond_0
    return-void
.end method

.method public setExpiryTime(Ljava/util/Date;)V
    .locals 1

    .line 405
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    return-void
.end method

.method public setLastAccessTime(Ljava/util/Date;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    return-void
.end method

.method public setLastModificationTime(Ljava/util/Date;)V
    .locals 1

    .line 386
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwDate;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    return-void
.end method

.method public setNotes(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 528
    check-cast p1, Lcom/keepassdroid/database/PwGroupV3;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    return-void
.end method

.method public setPassword(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 2

    const/4 p2, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 241
    array-length v1, v0

    invoke-virtual {p0, v0, p2, v1}, Lcom/keepassdroid/database/PwEntryV3;->setPassword([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 245
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/keepassdroid/database/PwEntryV3;->setPassword([BII)V

    :goto_0
    return-void
.end method

.method public setPassword([BII)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {v0, v1}, Lcom/keepassdroid/database/PwEntryV3;->fill([BB)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    .line 230
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV3;->password:[B

    .line 231
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    return-void
.end method

.method public setUUID(Ljava/util/UUID;)V
    .locals 0

    .line 420
    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->uuid:[B

    return-void
.end method

.method public setUrl(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    return-void
.end method

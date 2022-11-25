.class public Lcom/keepassdroid/database/PwDate;
.super Ljava/lang/Object;
.source "PwDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DATE_SIZE:I = 0x5


# instance fields
.field private cDate:[B

.field private cDateBuilt:Z

.field private jDate:Ljava/util/Date;

.field private jDateBuilt:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 40
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 40
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 52
    iput-object p1, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 40
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    const/4 v1, 0x5

    new-array v2, v1, [B

    .line 46
    iput-object v2, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    .line 47
    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    return-void
.end method

.method public static IsSameDate(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xe

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 201
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 202
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    .line 204
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 p1, 0x2

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x5

    .line 206
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_0

    const/16 p1, 0xa

    .line 207
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_0

    const/16 p1, 0xc

    .line 208
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_0

    const/16 p1, 0xd

    .line 209
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static readTime([BILjava/util/Calendar;)Ljava/util/Date;
    .locals 11

    .line 110
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 111
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    .line 112
    invoke-static {p0, v2}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v2

    add-int/lit8 v3, p1, 0x3

    .line 113
    invoke-static {p0, v3}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v3

    add-int/lit8 p1, p1, 0x4

    .line 114
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result p0

    shl-int/lit8 p1, v0, 0x6

    shr-int/lit8 v0, v1, 0x2

    or-int v5, p1, v0

    and-int/lit8 p1, v1, 0x3

    shl-int/lit8 p1, p1, 0x2

    shr-int/lit8 v0, v2, 0x6

    or-int/2addr p1, v0

    shr-int/lit8 v0, v2, 0x1

    and-int/lit8 v7, v0, 0x1f

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v3, 0x4

    or-int v8, v0, v1

    and-int/lit8 v0, v3, 0xf

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, p0, 0x6

    or-int v9, v0, v1

    and-int/lit8 v10, p0, 0x3f

    if-nez p2, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    :cond_0
    add-int/lit8 v6, p1, -0x1

    move-object v4, p2

    .line 130
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 132
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static writeTime(Ljava/util/Date;)[B
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, v0}, Lcom/keepassdroid/database/PwDate;->writeTime(Ljava/util/Date;Ljava/util/Calendar;)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeTime(Ljava/util/Date;Ljava/util/Calendar;)[B
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [B

    if-nez p1, :cond_1

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 149
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 151
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 153
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p0

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    const/16 v5, 0xb

    .line 156
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    .line 157
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    .line 158
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v7, 0x0

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 160
    invoke-static {v8}, Lcom/keepassdroid/utils/Types;->writeUByte(I)B

    move-result v8

    aput-byte v8, v1, v7

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v3

    shr-int/lit8 v7, v4, 0x2

    const/4 v8, 0x3

    and-int/2addr v7, v8

    or-int/2addr v2, v7

    .line 161
    invoke-static {v2}, Lcom/keepassdroid/utils/Types;->writeUByte(I)B

    move-result v2

    aput-byte v2, v1, p0

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v0, v0, 0x1f

    shl-int/2addr v0, p0

    or-int/2addr v0, v2

    shr-int/lit8 v2, v5, 0x4

    and-int/2addr p0, v2

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    and-int/lit8 p0, v5, 0xf

    const/4 v0, 0x4

    shl-int/2addr p0, v0

    shr-int/lit8 v2, v6, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    and-int/lit8 p0, v6, 0x3

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .line 67
    new-instance v0, Lcom/keepassdroid/database/PwDate;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwDate;-><init>()V

    .line 69
    iget-boolean v1, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    new-array v3, v1, [B

    .line 71
    iget-object v4, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v3, v0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    .line 73
    iput-boolean v2, v0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 76
    :cond_0
    iget-boolean v1, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    .line 78
    iput-boolean v2, v0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 183
    :cond_2
    check-cast p1, Lcom/keepassdroid/database/PwDate;

    .line 184
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    if-eqz v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    iget-object p1, p1, Lcom/keepassdroid/database/PwDate;->cDate:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 186
    :cond_3
    iget-boolean v1, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    if-eqz v1, :cond_4

    .line 187
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    invoke-static {v0, p1}, Lcom/keepassdroid/database/PwDate;->IsSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    return p1

    :cond_4
    if-eqz v0, :cond_5

    .line 188
    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDate;->getCDate()[B

    move-result-object p1

    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 191
    :cond_5
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDate;->getJDate()Ljava/util/Date;

    move-result-object p1

    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/keepassdroid/database/PwDate;->IsSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public getCDate()[B
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    invoke-static {}, Lcom/keepassdroid/app/App;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keepassdroid/database/PwDate;->writeTime(Ljava/util/Date;Ljava/util/Calendar;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->cDateBuilt:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    return-object v0
.end method

.method public getJDate()Ljava/util/Date;
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->cDate:[B

    const/4 v1, 0x0

    invoke-static {}, Lcom/keepassdroid/app/App;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/keepassdroid/database/PwDate;->readTime([BILjava/util/Calendar;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwDate;->jDateBuilt:Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwDate;->jDate:Ljava/util/Date;

    return-object v0
.end method

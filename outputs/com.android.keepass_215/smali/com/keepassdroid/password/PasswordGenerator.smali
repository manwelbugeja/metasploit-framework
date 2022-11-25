.class public Lcom/keepassdroid/password/PasswordGenerator;
.super Ljava/lang/Object;
.source "PasswordGenerator.java"


# static fields
.field private static final BRACKET_CHARS:Ljava/lang/String; = "[]{}()<>"

.field private static final DIGIT_CHARS:Ljava/lang/String; = "0123456789"

.field private static final LOWERCASE_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final MINUS_CHAR:Ljava/lang/String; = "-"

.field private static final SPACE_CHAR:Ljava/lang/String; = " "

.field private static final SPECIAL_CHARS:Ljava/lang/String; = "!\"#$%&\'*+,./:;=?@\\^`"

.field private static final UNDERLINE_CHAR:Ljava/lang/String; = "_"

.field private static final UPPERCASE_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field private cxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keepassdroid/password/PasswordGenerator;->cxt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generatePassword(IZZZZZZZZ)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v9, p0

    move v10, p1

    if-lez v10, :cond_3

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-nez p7, :cond_1

    if-nez p8, :cond_1

    if-eqz p9, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, v9, Lcom/keepassdroid/password/PasswordGenerator;->cxt:Landroid/content/Context;

    const v2, 0x7f100080

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 56
    invoke-virtual/range {v0 .. v8}, Lcom/keepassdroid/password/PasswordGenerator;->getCharacterSet(ZZZZZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 60
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    if-lez v1, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_2

    .line 65
    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, v9, Lcom/keepassdroid/password/PasswordGenerator;->cxt:Landroid/content/Context;

    const v2, 0x7f100086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getCharacterSet(ZZZZZZZZ)Ljava/lang/String;
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "abcdefghijklmnopqrstuvwxyz"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "0123456789"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "-"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "_"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p6, :cond_5

    const-string p1, " "

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p7, :cond_6

    const-string p1, "!\"#$%&\'*+,./:;=?@\\^`"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz p8, :cond_7

    const-string p1, "[]{}()<>"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

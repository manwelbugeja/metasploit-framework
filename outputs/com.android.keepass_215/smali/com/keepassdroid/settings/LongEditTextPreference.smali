.class public Lcom/keepassdroid/settings/LongEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "LongEditTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/settings/LongEditTextPreference;->getPersistedLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2

    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/settings/LongEditTextPreference;->persistLong(J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 57
    :catch_0
    invoke-virtual {p0}, Lcom/keepassdroid/settings/LongEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100082

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method

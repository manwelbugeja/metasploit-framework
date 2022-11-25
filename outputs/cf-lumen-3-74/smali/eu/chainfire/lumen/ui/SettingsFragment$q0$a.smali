.class Leu/chainfire/lumen/ui/SettingsFragment$q0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$q0;->a([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$q0;[I)V
    .locals 0

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "h/w composer state"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_1

    const-string v5, "|"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FB TARGET"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "HWC"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string v5, "GLES"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const-string v5, "layer"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/device"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const-string v7, "/client"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    if-eqz p3, :cond_b

    if-eqz v1, :cond_9

    if-nez v4, :cond_9

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput v6, p1, p2

    goto :goto_1

    :cond_9
    if-nez v1, :cond_a

    if-eqz v4, :cond_a

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput p1, p3, p2

    goto :goto_1

    :cond_a
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput p2, p1, p2

    goto :goto_1

    :cond_b
    if-nez v0, :cond_c

    if-eqz v3, :cond_f

    :cond_c
    if-eqz v0, :cond_d

    if-nez v3, :cond_d

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput v6, p1, p2

    goto :goto_1

    :cond_d
    if-nez v0, :cond_e

    if-eqz v3, :cond_e

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput p1, p3, p2

    goto :goto_1

    :cond_e
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;->a:[I

    aput p2, p1, p2

    :cond_f
    :goto_1
    return-void
.end method

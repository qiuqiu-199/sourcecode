.class public Lorg/sufficientlysecure/keychain/ui/util/Notify;
.super Ljava/lang/Object;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;,
        Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;,
        Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = 0x0

.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x5dc


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/Notify;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    move/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 158
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v6

    move v2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    return-object v6

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move/16 p1, p4

    const/16 v2, 0xdac

    move-object v0, v6

    move v1, v7

    move-object v3, v8

    move-object v4, p0

    move v5, p1

    .line 152
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    move-object/16 p0, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object v3, p0

    .line 141
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 62
    invoke-static {v2}, Lcom/nispok/snackbar/Snackbar;->with(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, Lcom/nispok/snackbar/enums/SnackbarType;->MULTI_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 63
    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->type(Lcom/nispok/snackbar/enums/SnackbarType;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Lcom/nispok/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v3

    if-nez v4, :cond_0

    .line 67
    sget-object v4, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v3, v4}, Lcom/nispok/snackbar/Snackbar;->duration(Lcom/nispok/snackbar/Snackbar$SnackbarDuration;)Lcom/nispok/snackbar/Snackbar;

    goto :goto_0

    :cond_0
    int-to-long v0, v4

    .line 69
    invoke-virtual {v3, v0, v1}, Lcom/nispok/snackbar/Snackbar;->duration(J)Lcom/nispok/snackbar/Snackbar;

    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->applyToBar(Lcom/nispok/snackbar/Snackbar;)V

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nispok/snackbar/Snackbar;->actionLabel(I)Lcom/nispok/snackbar/Snackbar;

    :cond_1
    if-eqz p1, :cond_2

    .line 78
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$1;

    invoke-direct {v4, p1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$1;-><init>(Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;)V

    invoke-virtual {v3, v4}, Lcom/nispok/snackbar/Snackbar;->actionListener(Lcom/nispok/snackbar/listeners/ActionClickListener;)Lcom/nispok/snackbar/Snackbar;

    .line 86
    :cond_2
    instance-of v4, v2, Lorg/sufficientlysecure/keychain/util/FabContainer;

    if-eqz v4, :cond_3

    .line 87
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$2;

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/nispok/snackbar/Snackbar;->eventListener(Lcom/nispok/snackbar/listeners/EventListener;)Lcom/nispok/snackbar/Snackbar;

    .line 100
    :cond_3
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;

    invoke-direct {v4, v3, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;-><init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    return-object v4

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/16 v0, 0xdac

    .line 146
    invoke-static {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/Notify;--->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

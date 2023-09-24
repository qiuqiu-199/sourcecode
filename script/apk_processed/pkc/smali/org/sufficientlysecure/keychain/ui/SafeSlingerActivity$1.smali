.class Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;
.super Ljava/lang/Object;
.source "SafeSlingerActivity.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 81
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 84
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-static {v1, p0}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->access$002(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;I)I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;--->onValueChange(Landroid/widget/NumberPicker;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

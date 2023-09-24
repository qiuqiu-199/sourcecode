.class Lorg/sufficientlysecure/keychain/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 101
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    .line 105
    check-cast p0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->getIdentifier()J

    move-result-wide v2

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    const-class p0, Lorg/sufficientlysecure/keychain/ui/HelpActivity;

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 124
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    const-class p0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->access$300(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->access$200(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V

    goto :goto_0

    .line 115
    :pswitch_4
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V

    goto :goto_0

    .line 109
    :pswitch_6
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onKeysSelected()V

    :goto_0
    if-eqz v1, :cond_0

    .line 131
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/MainActivity$1;--->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

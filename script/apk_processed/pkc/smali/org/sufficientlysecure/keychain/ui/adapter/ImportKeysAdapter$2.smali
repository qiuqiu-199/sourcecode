.class Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;
.super Ljava/lang/Object;
.source "ImportKeysAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

.field final synthetic val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 175
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->val$position:I

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 178
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iget v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->val$position:I

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    const/4 v2, 0x0

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
